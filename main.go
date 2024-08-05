package main

import (
	"encoding/json"
	"fmt"
	"net/url"
	"os"
	"path/filepath"
	"reflect"
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

func test2() {
	path, _ := os.Executable()
	path = filepath.Dir(path)
	fmt.Println("path:", path)
	fmt.Println(filepath.Dir(path))

	tpath := reflect.TypeOf(path)
	fmt.Println(tpath) // string
	tpath.Kind()       // string
	for i := 0; i < tpath.NumField(); i++ {
	}
	var a *int
	ta := reflect.TypeOf(a)
	fmt.Println(ta) // *int
	ta.Kind()       // ptr
	ta.Elem()       // int
}

type RootID struct {
	RootFolderID string `json:"root_folder_id"`
}

func (r RootID) GetRootId() string {
	return r.RootFolderID
}

type Addition struct {
	DriveType string `json:"drive_type" type:"select" options:"default,resource,backup" default:"default"`
	RootID
	RefreshToken       string `json:"refresh_token" require:"true"`
	OrderBy            string `json:"order_by" type:select" options:"name,size,update_at,create_at"`
	OrderDirection     string `json:"order_direction" type:"select" options:"ASC,DESC"`
	OauthTokenURL      string `json:"oauth_token_url" default:"https://api-cf.nn.ci/alist/ali_open/token"`
	ClientID           string `json:"client_id" required:"false" help:"Keep it empty if you don't have one"`
	ClientSecret       string `json:"client_secret" required:"false" help:"Keep it empty if you don't have one"`
	RemoveWay          string `json:"remove_way" required:"true" type:"select" options:"trash,delete"`
	RapidUpload        bool   `json:"rapid_upload" help:"If you enable this option, the file will be uploaded to the server first, so the progress will be incorrect"`
	InternalUpload     bool   `json:"internal_upload" help:"If you are using Aliyun ECS is located in Beijing, you can turn it on to boost the upload speed"`
	LIVPDownloadFormat string `json:"livp_download_format" type:"select" options:"jpeg,mov" default:"jpeg"`
	AccessToken        string
}
type AliyundriveOpen struct {
	Addition
}

type Item struct {
	Name     string `json:"name"`
	Type     string `json:"type"`
	Default  string `json:"default"`
	Options  string `json:"options"`
	Required bool   `json:"required"`
	Help     string `json:"help"`
}

func registerDriverItems(addition interface{}) {
	tAddition := reflect.TypeOf(addition) // main.Addition  *main.Addition
	for tAddition.Kind() == reflect.Pointer {
		tAddition = tAddition.Elem()
	}
	additionalItems := getAdditionalItems(tAddition, "root")
	fmt.Println("tAddition:", tAddition)
	fmt.Println("Kind:", tAddition.Kind())
	//fmt.Println("Elem:", tAddition.Elem())
	fmt.Println(additionalItems)
}
func getAdditionalItems(t reflect.Type, defaultRoot string) []Item {
	var items []Item
	for i := 0; i < t.NumField(); i++ {
		field := t.Field(i)
		if field.Anonymous { // field.Type.Kind() == reflect.Struct
			items = append(items, getAdditionalItems(field.Type, defaultRoot)...)
			continue
		}
		tag := field.Tag
		// tag.Lookup tag.Get 返回key对应的value，没有key，返回""
		// tag.Lookup 判断是否有key,有就返回key对应的value
		name, ok := tag.Lookup("json")
		if !ok {
			continue
		}
		item := Item{
			Name:     name,
			Type:     field.Type.Kind().String(),
			Default:  tag.Get("default"),
			Options:  tag.Get("options"),
			Required: tag.Get("required") == "true",
			Help:     tag.Get("help"),
		}
		if tag.Get("type") == "" {
			item.Type = tag.Get("type")
		}
		if item.Name == "root_folder_id" || item.Name == "root_folder_path" {
			if item.Default == "" {
				item.Default = defaultRoot
			}
			item.Required = item.Default != ""
		}

		items = append(items, item)
		//reflect.StructField
		//fmt.Println(i, field)
	}
	return items
}
func main() {
	a := new(AliyundriveOpen)
	registerDriverItems(a.Addition)
	escapePath := url.PathEscape("my/cool+blog&about,stuff") // my%2Fcool+blog&about%2Cstuff
	fmt.Println("escapePath:", escapePath)
	// 将 ％AB 转换为字节 0xAB
	path, _ := url.PathUnescape(escapePath) // my/cool+blog&about,stuff
	fmt.Println("unescapePath:", path)
}
