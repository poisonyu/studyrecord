package initialize

import (
	"github.com/songzhibin97/gkit/cache/local_cache"

	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"github.com/flipped-aurora/gin-vue-admin/server/utils"
)

func OtherInit() {
	dr, err := utils.ParseDuration(global.GVA_CONFIG.JWT.ExpiresTime)
	if err != nil {
		panic(err)
	}
	_, err = utils.ParseDuration(global.GVA_CONFIG.JWT.BufferTime)
	if err != nil {
		panic(err)
	}
	// https://github.com/songzhibin97/gkit/blob/master/README_zh.md
	global.BlackCache = local_cache.NewCache(
		local_cache.SetDefaultExpire(dr),
	)
}
