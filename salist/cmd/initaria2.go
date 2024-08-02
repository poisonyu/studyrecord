package cmd

import (
	"fmt"

	"github.com/alist-org/alist/v3/internal/bootstrap"
	"github.com/alist-org/alist/v3/internal/bootstrap/data"
	"github.com/alist-org/alist/v3/internal/offline_download/tool"
	"github.com/spf13/cobra"
)

var Aria2Cmd = &cobra.Command{
	Use:   "initaria2",
	Short: "init aria2",
	Run: func(cmd *cobra.Command, args []string) {
		bootstrap.InitConfig()
		//bootstrap.Log()
		bootstrap.InitDB()
		data.InitData()
		aria2Tool := tool.Tools["aria2"]
		aria2Version, err := aria2Tool.Init()
		if err != nil {
			fmt.Println("init aria2 failed", err)
		}
		fmt.Println("aria2 version:", aria2Version)
	},
}

func init() {
	RootCmd.AddCommand(Aria2Cmd)
}
