package main

import (
	"encoding/json"
	"fmt"
	"os"
)

func test() {

	// os.OpenFile("")
	// os.Open()
	// os.Create()
	// os.ReadFile()
	// os.WriteFile()
	// os.Remove()
	// os.RemoveAll()
	state, _ := os.Stat("record.sh")
	fmt.Println(state)
	//var a fs.FileInfo
	err := os.MkdirAll("tes/test", 0777)
	fmt.Println("mkdir:", err)
	// currentPath, _ := os.Executable()
	// currentDir := filepath.Dir(currentPath)

	//json.Unmarshal()
	re1, _ := json.Marshal(conf)
	re2, _ := json.MarshalIndent(conf, "", "  ")
	fmt.Println(string(re1), "\n", string(re2))
}
