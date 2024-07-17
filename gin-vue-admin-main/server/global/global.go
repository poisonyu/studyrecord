package global

import (
	"sync"

	"github.com/qiniu/qmgo"

	"github.com/flipped-aurora/gin-vue-admin/server/utils/timer"
	"github.com/songzhibin97/gkit/cache/local_cache"

	"golang.org/x/sync/singleflight"

	"go.uber.org/zap"

	"github.com/flipped-aurora/gin-vue-admin/server/config"

	"github.com/redis/go-redis/v9"
	"github.com/spf13/viper"
	"gorm.io/gorm"
)

var (
	GVA_CONFIG config.Server
	GVA_VP     *viper.Viper
	BlackCache local_cache.Cache
	GVA_LOG    *zap.Logger

	GVA_DB     *gorm.DB
	GVA_DBList map[string]*gorm.DB
	GVA_REDIS  redis.UniversalClient
	GVA_MONGO  *qmgo.QmgoClient

	// GVA_LOG    *oplogging.Logger

	GVA_Timer               timer.Timer = timer.NewTimerTask() // 创建一个定时任务管理timer的实例， 把这个实例放进Timer接口变量中
	GVA_Concurrency_Control             = &singleflight.Group{}

	lock sync.RWMutex
)

// GetGlobalDBByDBName 通过名称获取db list中的db
func GetGlobalDBByDBName(dbname string) *gorm.DB {
	lock.RLock()
	defer lock.RUnlock()
	return GVA_DBList[dbname]
}

// MustGetGlobalDBByDBName 通过名称获取db 如果不存在则panic
func MustGetGlobalDBByDBName(dbname string) *gorm.DB {
	lock.RLock()
	defer lock.RUnlock()
	db, ok := GVA_DBList[dbname]
	if !ok || db == nil {
		panic("db no init")
	}
	return db
}
