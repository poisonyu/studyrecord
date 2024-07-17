package internal

import (
	"os"
	"time"

	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"go.uber.org/zap"
	"go.uber.org/zap/zapcore"
)

type ZapCore struct {
	level zapcore.Level
	zapcore.Core
}

func NewZapCore(level zapcore.Level) *ZapCore {
	entity := &ZapCore{level: level}
	syncer := entity.WriteSyncer() // 设置日志输出在文件中的路径
	levelEnabler := zap.LevelEnablerFunc(func(l zapcore.Level) bool {
		return l == level
	}) // ?
	//设置日志的编码器，日志输出路径， 输出日志级别
	entity.Core = zapcore.NewCore(global.GVA_CONFIG.Zap.Encoder(), syncer, levelEnabler)
	return entity
}

// 设置日志输出在文件中
func (z *ZapCore) WriteSyncer(formats ...string) zapcore.WriteSyncer {
	cutter := NewCutter(
		global.GVA_CONFIG.Zap.Director,  // 日志文件夹
		z.level.String(),                //日志级别
		CutterWithLayout(time.DateOnly), // 设置时间格式
		CutterWithFormats(formats...),   // 设置自定义参数
	)
	// 使日志输出在控制台
	if global.GVA_CONFIG.Zap.LogInConsole {
		multiSyncer := zapcore.NewMultiWriteSyncer(os.Stdout, cutter)
		return zapcore.AddSync(multiSyncer)
	}
	return zapcore.AddSync(cutter)
}

func (z *ZapCore) Enabled(level zapcore.Level) bool {
	return z.level == level
}

func (z *ZapCore) With(fields []zapcore.Field) zapcore.Core {
	return z.Core.With(fields)
}

func (z *ZapCore) Check(entry zapcore.Entry, check *zapcore.CheckedEntry) *zapcore.CheckedEntry {
	if z.Enabled(entry.Level) {
		return check.AddCore(entry, z)
	}
	return check
}

func (z *ZapCore) Write(entry zapcore.Entry, fields []zapcore.Field) error {
	for i := 0; i < len(fields); i++ {
		if fields[i].Key == "business" || fields[i].Key == "folder" || fields[i].Key == "directory" {
			syncer := z.WriteSyncer(fields[i].String)
			z.Core = zapcore.NewCore(global.GVA_CONFIG.Zap.Encoder(), syncer, z.level)
		}
	}
	return z.Core.Write(entry, fields)
}

func (z *ZapCore) Sync() error {
	return z.Core.Sync()
}
