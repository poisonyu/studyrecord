package main

import (
	"encoding/json"
	"fmt"
	"os"
	"path/filepath"
	"strings"
)

type Config struct {
	Force          bool   `json:"force" env:"FORCE"`
	SiteURL        string `json:"site_url" env:"SITE_URL"`
	Cdn            string `json:"cdn" env:"CDN"`
	JwtSecret      string `json:"jwt_secret" env:"JWT_SECRET"`
	TokenExpiresIn int    `json:"token_expires_in" env:"TOKEN_EXPIRES_IN"`
	// Database              Database    `json:"database" envPrefix:"DB_"`
	// Meilisearch           Meilisearch `json:"meilisearch" envPrefix:"MEILISEARCH_"`
	// Scheme                Scheme      `json:"scheme"`
	TempDir  string `json:"temp_dir" env:"TEMP_DIR"`
	BleveDir string `json:"bleve_dir" env:"BLEVE_DIR"`
	DistDir  string `json:"dist_dir"`
	//Log                   LogConfig   `json:"log"`
	DelayedStart          int  `json:"delayed_start" env:"DELAYED_START"`
	MaxConnections        int  `json:"max_connections" env:"MAX_CONNECTIONS"`
	TlsInsecureSkipVerify bool `json:"tls_insecure_skip_verify" env:"TLS_INSECURE_SKIP_VERIFY"`
	// Tasks                 TasksConfig `json:"tasks" envPrefix:"TASKS_"`
	// Cors                  Cors        `json:"cors" envPrefix:"CORS_"`
	// S3                    S3          `json:"s3" envPrefix:"S3_"`
}

func test() {
	text := "this a test, where there is light, there is hope"
	// This a test, where there is light, there is hope
	fmt.Println(strings.ToUpper(text[:1]) + text[1:])
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
	currentPath, _ := os.Executable()
	currentDir := filepath.Dir(currentPath)
	fmt.Println("currentPath:", currentPath, "currentDir:", currentDir)
	fmt.Println(os.Args, "\n", os.Environ())
	//currentPath: C:\Users\Administrator\studyrecord\studyrecord.exe
	//currentDir: C:\Users\Administrator\studyrecord
	conf := &Config{
		// Scheme: Scheme{
		// 	Address:    "0.0.0.0",
		// 	UnixFile:   "",
		// 	HttpPort:   5244,
		// 	HttpsPort:  -1,
		// 	ForceHttps: false,
		// 	CertFile:   "",
		// 	KeyFile:    "",
		// },
		JwtSecret:      "random.String(16)",
		TokenExpiresIn: 48,
		TempDir:        "tempDir",
		// Database: Database{
		// 	Type:        "sqlite3",
		// 	Port:        0,
		// 	TablePrefix: "x_",
		// 	DBFile:      dbPath,
		// },
		// Meilisearch: Meilisearch{
		// 	Host: "http://localhost:7700",
		// },
		BleveDir: "blevedir",
		// Log: LogConfig{
		// 	Enable:     true,
		// 	Name:       logPath,
		// 	MaxSize:    50,
		// 	MaxBackups: 30,
		// 	MaxAge:     28,
		// },
		MaxConnections:        0,
		TlsInsecureSkipVerify: true,
		// Tasks: TasksConfig{
		// 	Download: TaskConfig{
		// 		Workers:  5,
		// 		MaxRetry: 1,
		// 	},
		// 	Transfer: TaskConfig{
		// 		Workers:  5,
		// 		MaxRetry: 2,
		// 	},
		// 	Upload: TaskConfig{
		// 		Workers: 5,
		// 	},
		// 	Copy: TaskConfig{
		// 		Workers:  5,
		// 		MaxRetry: 2,
		// 	},
		// },
		// Cors: Cors{
		// 	AllowOrigins: []string{"*"},
		// 	AllowMethods: []string{"*"},
		// 	AllowHeaders: []string{"*"},
		// },
		// S3: S3{
		// 	Enable: false,
		// 	Port:   5246,
		// 	SSL:    false,
		// },
	}
	//json.Unmarshal()
	re1, _ := json.Marshal(conf)
	re2, _ := json.MarshalIndent(conf, "", "  ")
	fmt.Println(string(re1), "\n", string(re2))
}

// 	"fmt"
// 	"net/url"
// )

// func main() {
// 	// var t *url.URL
// 	u, _ := url.Parse("https://httpbin.org/get?dog=kitty")
// 	fmt.Println(*u)

// }

func main() {
	path, _ := os.Executable()
	path = filepath.Dir(path)
	fmt.Println("path:", path)
	fmt.Println(filepath.Dir(path))

}
