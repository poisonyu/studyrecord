package cmd

import (
	"fmt"

	"github.com/alist-org/alist/v3/internal/bootstrap"
	"github.com/alist-org/alist/v3/internal/bootstrap/data"
	"github.com/alist-org/alist/v3/internal/offline_download/tool"
	"github.com/alist-org/alist/v3/pkg/utils"
	log "github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

var Aria2Cmd = &cobra.Command{
	Use:   "initaria2",
	Short: "init aria2",
	Run: func(cmd *cobra.Command, args []string) {
		bootstrap.InitConfig()
		bootstrap.Log()
		bootstrap.InitDB()
		data.InitData()
		aria2Tool := tool.Tools["aria2"]
		aria2Version, err := aria2Tool.Init()
		if err != nil {
			fmt.Println("[init aria2]:", err)
		}
		fmt.Println("[Version]:", aria2Version)

		text := "where there is light, there is hope"

		log.Infof("[log]: %s\n", text)

		utils.Log.Infof("[utils.Log.Infof]: %s\n", text)
	},
}

func init() {
	RootCmd.AddCommand(Aria2Cmd)
}
