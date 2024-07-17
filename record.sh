
2024/6/24

update sys_users set password = '$2a$10$81wHK0//eekt1RE3ZtfEmOuhoYwfr5wt3U/Ah66ntA0FiGsR0tMXW' where id = 1;


curl --location 'http://127.0.0.1:8888/user/admin_register' \
--header 'Content-Type: application/json' \
--data-raw '{
  "authorityId": 9528,
  "authorityIds": [9528],
  "email": "77255@qq.com",
  "enable": 1,
  "headerImg": null,
  "nickName": "kk",
  "passWord": "12345",
  "phone": "123331313",
  "userName": "cyan"
}'


curl -X POST 'http://127.0.0.1:8888/user/admin_register' -d '{"authorityId": "1", "authorityIds": "", "email": "purecard77@163.com", "enable": "1", "headerImg":"", "nickName": "cyan", "passWord":"card9033", "phone":"1234", "userName": "cyan" }'

curl -X POST 'http://127.0.0.1:8888/user/admin_register' -d "authorityId=1&authorityIds=&email=purecard77@163.com&enable=1&headerImg=&nickName=cyan&passWord=card9033&phone=1234&userName=cyan"

cron.WithSeconds()
cron.New(option...)
cron.Cron


drop function if exists getNthHighestSalary;
# 声明结束符为$
delimiter $
create function getNthHighestSalary(N int) 
returns int
reads sql data
begin 
declare M int; 
set M = N-1; 
return (select distinct salary from employee order by salary desc limit 1 offset M); 
end $
# 重置结束符
delimiter ;


#  create function getNthHighestSalary(N int) returns int reads sql data

# create function getNthHighestSalary(N int) 
# returns int reads sql data 
# return 
# (select salary from eemployee order by salary desc limit 1 offset N);

# create function getNthHighestSalary(N int) returns int reads sql data return (select salary from eemployee order by salary desc limit 1 offset N);

set global log_bin_trust_function_creators=TRUE;
show variables like 'datadir';

//engine.LoadHTMLFiles("templates/index.tmpl")
//engine.LoadHTMLGlob("templates/*")
// engine.LoadHTMLGlob("templates/**/*")

a := math.MaxInt8 >> 1
fmt.Println(math.MaxInt8 >> 1)

# 结构体字段的tag `json:"name" binding:"required"`

protoc --go_out=. hello.proto

curl "http://localhost:8080/post?id=100&page=2" --request "POST" --data "name=ice_moss@163.com&password=123456"

curl http://localhost:8080/postform --request "POST" --data "username=ice_moss@163.com&password=123456"
curl http://localhost:8080/postform -d "username=ice_moss@163.com&password=123456" -X POST


curl http://localhost:8080/albums --header "Content-Type: application/json" --request "GET"


curl http://localhost:8080/albums \
    --include \
    --header "Content-Type: application/json" \
    --request "POST" \
    --data '{"id": "4", "title": "The Modern Sound of Betty Carter", "artist": "Betty Carter", "price": 49.99}'

curl http://localhost:8080/albums --include --header "Content-Type: application/json" --request "POST" --data '{"id": "4", "title": "The Modern Sound of Betty Carter", "artist": "Betty Carter", "price": 49.99}'


curl http://localhost:8080/albums --include --header "Content-Type: application/json" --request "POST" --data '{"id": "4", "title": "The Modern Sound of Betty Carter", "artist": "Betty Carter", "price": 49.99}'

curl http://localhost:8080/albums --include --header "Content-Type: application/json" --request "POST" --data '{"id": "4","title": "The Modern Sound of Betty Carter","artist": "Betty Carter","price": 49.99}'

go work init ./hello

go work use ./example/hello # 该 go work use 命令将一个新模块添加到 go.work 文件中

npm install --legacy-peer-deps #参数可以让 npm 在解析依赖时不考虑 peerDependencies

npm run 

w.Header().Set("Content-Type", "text/html")

http.Redirect(w, r, url, code)
http.NotFound(w, r)
http.Error(w, err, code)

http.StatusContinue 100
http.StatusOK 200 
http.StatusFound 302 
http.StatusBadRequest 400
http.StatusForbidden 403 
http.StatusNotFound 404 
http.StatusInternalServerError 500 

set http_proxy=http://127.0.0.1:7890 & set https_proxy=http://127.0.0.1:7890

wget https://i.pximg.net/img-original/img/2024/04/24/00/05/08/118105505_p14.png \
--referer="https://www.pixiv.net/" \
--user-agent="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36"


wget https://i.pximg.net/img-original/img/2024/04/24/00/05/08/118105505_p14.png --referer="https://www.pixiv.net/" --user-agent="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36"

wget https://tvax2.sinaimg.cn/large/ec43126fgy1hjeq49p3f2j21nq25s1kz.jpg --referer="https://weibo.com/" -O test.jpg

wget https://iw233.cn/api.php?sort=random --referer="https://weibo.com/" -O test22.jpg 

wget https://iw233.cn/api.php?sort=pc --referer="https://weibo.com/" -O pc.jpg


wget https://iw233.cn/api.php?sort=top&num=2 --referer="https://weibo.com/"


curl "https://iw233.cn/api.php?sort=top&type=json&num=2" -e "https://weibo.com/"
{"pic":["https:\/\/tva1.sinaimg.cn\/large\/ec43126fgy1h1y42j7oedj20px121hdt.jpg","https:\/\/tvax1.sinaimg.cn\/large\/ec43126fgy1h3m98tviuxj228q3f27wm.jpg"]}


wget -i urls.txt

# curl -L -C - "https://cn-beijing-data.aliyundrive.net/coPNI42c%2F951346711%2F663b2bababc169dd26aa4e14ba9f151fa3101198%2F663b2bab56980243abeb46ecb5e4783a3360d1e4?callback=eyJjYWxsYmFja1VybCI6Imh0dHA6Ly9iajI5LmFwaS1ocC5hbGl5dW5wZHMuY29tL3YyL2ZpbGUvZG93bmxvYWRfY2FsbGJhY2siLCJjYWxsYmFja0JvZHkiOiJodHRwSGVhZGVyLnJhbmdlPSR7aHR0cEhlYWRlci5yYW5nZX1cdTAwMjZidWNrZXQ9JHtidWNrZXR9XHUwMDI2b2JqZWN0PSR7b2JqZWN0fVx1MDAyNmRvbWFpbl9pZD0ke3g6ZG9tYWluX2lkfVx1MDAyNnVzZXJfaWQ9JHt4OnVzZXJfaWR9XHUwMDI2ZHJpdmVfaWQ9JHt4OmRyaXZlX2lkfVx1MDAyNmZpbGVfaWQ9JHt4OmZpbGVfaWR9XHUwMDI2cGRzX3BhcmFtcz0ke3g6cGRzX3BhcmFtc31cdTAwMjZ2ZXJzaW9uPSR7eDp2ZXJzaW9ufSIsImNhbGxiYWNrQm9keVR5cGUiOiJhcHBsaWNhdGlvbi94LXd3dy1mb3JtLXVybGVuY29kZWQiLCJjYWxsYmFja1N0YWdlIjoiYmVmb3JlLWV4ZWN1dGUiLCJjYWxsYmFja0ZhaWx1cmVBY3Rpb24iOiJpZ25vcmUifQ%3D%3D&callback-var=eyJ4OmRvbWFpbl9pZCI6ImJqMjkiLCJ4OnVzZXJfaWQiOiI4MGI1Njg2YzQ0ZGY0YjBmOGVhYjM5Nzg5YmEzMzU5YyIsIng6ZHJpdmVfaWQiOiI3NDc0NTM2NCIsIng6ZmlsZV9pZCI6IjY2NGFiODI1MTFiMjAzMGUyNDJlNGExZmIzZWEyYTAwZjcyNjQ2ODAiLCJ4OnBkc19wYXJhbXMiOiJ7XCJhcFwiOlwiMjVkelgzdmJZcWt0Vnh5WFwifSIsIng6dmVyc2lvbiI6InYzIn0%3D&di=bj29&dr=74745364&f=664ab82511b2030e242e4a1fb3ea2a00f7264680&pds-params=%7B%22ap%22%3A%2225dzX3vbYqktVxyX%22%7D&response-content-disposition=attachment%3B%20filename%2A%3DUTF-8%27%27&security-token=CAISvgJ1q6Ft5B2yfSjIr5faD9Tk2IZRjpicb2XphUM3Tf1hjb%2Bdkzz2IHhMf3NpBOkZvvQ1lGlU6%2Fcalq5rR4QAXlDfNSLiXyrGqFHPWZHInuDox55m4cTXNAr%2BIhr%2F29CoEIedZdjBe%2FCrRknZnytou9XTfimjWFrXWv%2Fgy%2BQQDLItUxK%2FcCBNCfpPOwJms7V6D3bKMuu3OROY6Qi5TmgQ41Uh1jgjtPzkkpfFtkGF1GeXkLFF%2B97DRbG%2FdNRpMZtFVNO44fd7bKKp0lQLs0ARrv4r1fMUqW2X543AUgFLhy2KKMPY99xpFgh9a7j0iCbSGyUu%2FhcRm5sw9%2Byfo34lVYneUzBBVS6H64IClLcc%2BmqdsRIvJzWstJ7Gf9LWqChvSgk4TxhhcNFKSTQrInFCB0%2BcRObJl16iUllbDPXtuMkagAFbeh%2BSBopf%2B9AvkETIZapVOceR1xdAzGKWFUbTeuZJd1z%2F9BvPcSIxitVNzDAKw8lqfwty9y%2F3HTsUiZGy7UGhsn8U12siGAzR%2FJ52zFsUQeOJ7QaSjQlI%2F5JbAGC%2Fj71mX7KlSiQdjVQ9%2BcktfqE%2BmDzshZ5wlL9FYAIUTa0uBSAA&u=80b5686c44df4b0f8eab39789ba3359c&x-oss-access-key-id=STS.NToDnP5Yp9ZwmCXaCbArMbz6q&x-oss-additional-headers=referer&x-oss-expires=1716187245&x-oss-signature=bud2xjwqgCmQTuhHwBBLjixYHT%2Bl3UcO7UBpZU3v2xY%3D&x-oss-signature-version=OSS2" -o "Wo.De.A.Le.Tai_01_4K.mp4" -e "https://www.aliyundrive.com/"

# curl -L -C - "https://cn-beijing-data.aliyundrive.net/5fb8f09a767d2a7c6ec7439a911ea62c4ede732a%2F5fb8f09a9d025d508143456fa8286f5afdb44f6e?callback=eyJjYWxsYmFja1VybCI6Imh0dHA6Ly9iajI5LmFwaS1ocC5hbGl5dW5wZHMuY29tL3YyL2ZpbGUvZG93bmxvYWRfY2FsbGJhY2siLCJjYWxsYmFja0JvZHkiOiJodHRwSGVhZGVyLnJhbmdlPSR7aHR0cEhlYWRlci5yYW5nZX1cdTAwMjZidWNrZXQ9JHtidWNrZXR9XHUwMDI2b2JqZWN0PSR7b2JqZWN0fVx1MDAyNmRvbWFpbl9pZD0ke3g6ZG9tYWluX2lkfVx1MDAyNnVzZXJfaWQ9JHt4OnVzZXJfaWR9XHUwMDI2ZHJpdmVfaWQ9JHt4OmRyaXZlX2lkfVx1MDAyNmZpbGVfaWQ9JHt4OmZpbGVfaWR9XHUwMDI2cGRzX3BhcmFtcz0ke3g6cGRzX3BhcmFtc31cdTAwMjZ2ZXJzaW9uPSR7eDp2ZXJzaW9ufSIsImNhbGxiYWNrQm9keVR5cGUiOiJhcHBsaWNhdGlvbi94LXd3dy1mb3JtLXVybGVuY29kZWQiLCJjYWxsYmFja1N0YWdlIjoiYmVmb3JlLWV4ZWN1dGUiLCJjYWxsYmFja0ZhaWx1cmVBY3Rpb24iOiJpZ25vcmUifQ%3D%3D&callback-var=eyJ4OmRvbWFpbl9pZCI6ImJqMjkiLCJ4OnVzZXJfaWQiOiI4MGI1Njg2YzQ0ZGY0YjBmOGVhYjM5Nzg5YmEzMzU5YyIsIng6ZHJpdmVfaWQiOiI3NDc0NTM2NCIsIng6ZmlsZV9pZCI6IjY0Y2RiYzU2MmMzMmIyNDU2ZjlkNDc1NmIzZGNkZmUzYTcyOTllM2IiLCJ4OnBkc19wYXJhbXMiOiJ7XCJhcFwiOlwiMjVkelgzdmJZcWt0Vnh5WFwifSIsIng6dmVyc2lvbiI6InYzIn0%3D&di=bj29&dr=74745364&f=64cdbc562c32b2456f9d4756b3dcdfe3a7299e3b&pds-params=%7B%22ap%22%3A%2225dzX3vbYqktVxyX%22%7D&response-content-disposition=attachment%3B%20filename%2A%3DUTF-8%27%27&security-token=CAISvgJ1q6Ft5B2yfSjIr5bBGs%2F5p5dr7aiPVHP%2Fi1Uke8EYrqvl1Tz2IHhMf3NpBOkZvvQ1lGlU6%2Fcalq5rR4QAXlDfNUH0XSDGqFHPWZHInuDox55m4cTXNAr%2BIhr%2F29CoEIedZdjBe%2FCrRknZnytou9XTfimjWFrXWv%2Fgy%2BQQDLItUxK%2FcCBNCfpPOwJms7V6D3bKMuu3OROY6Qi5TmgQ41Uh1jgjtPzkkpfFtkGF1GeXkLFF%2B97DRbG%2FdNRpMZtFVNO44fd7bKKp0lQLs0ARrv4r1fMUqW2X543AUgFLhy2KKMPY99xpFgh9a7j0iCbSGyUu%2FhcRm5sw9%2Byfo34lVYneQzhUx1RXLuHwufJ7FxfIREfquk63pvSlHLcLPe0Kjzzleo2k1XRPVFF%2B535IaHXuToXDnvSiDogtePXtuMkagAFi%2Fvv2di9tj8xPOwOBPb2M4ZQwRhMwIlFlWFsyP8DA10P4L%2B1igDfjOUiFicITWa89o9%2Fq6DzKxgYCKK0tPemhu%2Fsn4NaLbbR2EhUhk%2Fw5zSSPcveF6WU3ptrQIBkQRv2kOTn4mvQGLmh5DNXNKGyf6KrtK6HaJmqP2aBuFTNnUCAA&u=80b5686c44df4b0f8eab39789ba3359c&x-oss-access-key-id=STS.NUtQuMJHJZjdVUNoUqwN4AnN7&x-oss-additional-headers=referer&x-oss-expires=1716190923&x-oss-signature=W7KXWq1u5q%2FtFJsYvpcHtmuEs6UR9%2Fxw0pzcggcuJyk%3D&x-oss-signature-version=OSS2" -o "某科学的超电磁炮 S1 OVA.mkv" -e "https://www.aliyundrive.com/"  -A "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36"

#wget "https://cn-beijing-data.aliyundrive.net/5fb8f09a767d2a7c6ec7439a911ea62c4ede732a%2F5fb8f09a9d025d508143456fa8286f5afdb44f6e?callback=eyJjYWxsYmFja1VybCI6Imh0dHA6Ly9iajI5LmFwaS1ocC5hbGl5dW5wZHMuY29tL3YyL2ZpbGUvZG93bmxvYWRfY2FsbGJhY2siLCJjYWxsYmFja0JvZHkiOiJodHRwSGVhZGVyLnJhbmdlPSR7aHR0cEhlYWRlci5yYW5nZX1cdTAwMjZidWNrZXQ9JHtidWNrZXR9XHUwMDI2b2JqZWN0PSR7b2JqZWN0fVx1MDAyNmRvbWFpbl9pZD0ke3g6ZG9tYWluX2lkfVx1MDAyNnVzZXJfaWQ9JHt4OnVzZXJfaWR9XHUwMDI2ZHJpdmVfaWQ9JHt4OmRyaXZlX2lkfVx1MDAyNmZpbGVfaWQ9JHt4OmZpbGVfaWR9XHUwMDI2cGRzX3BhcmFtcz0ke3g6cGRzX3BhcmFtc31cdTAwMjZ2ZXJzaW9uPSR7eDp2ZXJzaW9ufSIsImNhbGxiYWNrQm9keVR5cGUiOiJhcHBsaWNhdGlvbi94LXd3dy1mb3JtLXVybGVuY29kZWQiLCJjYWxsYmFja1N0YWdlIjoiYmVmb3JlLWV4ZWN1dGUiLCJjYWxsYmFja0ZhaWx1cmVBY3Rpb24iOiJpZ25vcmUifQ%3D%3D&callback-var=eyJ4OmRvbWFpbl9pZCI6ImJqMjkiLCJ4OnVzZXJfaWQiOiI4MGI1Njg2YzQ0ZGY0YjBmOGVhYjM5Nzg5YmEzMzU5YyIsIng6ZHJpdmVfaWQiOiI3NDc0NTM2NCIsIng6ZmlsZV9pZCI6IjY0Y2RiYzU2MmMzMmIyNDU2ZjlkNDc1NmIzZGNkZmUzYTcyOTllM2IiLCJ4OnBkc19wYXJhbXMiOiJ7XCJhcFwiOlwiMjVkelgzdmJZcWt0Vnh5WFwifSIsIng6dmVyc2lvbiI6InYzIn0%3D&di=bj29&dr=74745364&f=64cdbc562c32b2456f9d4756b3dcdfe3a7299e3b&pds-params=%7B%22ap%22%3A%2225dzX3vbYqktVxyX%22%7D&response-content-disposition=attachment%3B%20filename%2A%3DUTF-8%27%27&security-token=CAISvgJ1q6Ft5B2yfSjIr5bBGs%2F5p5dr7aiPVHP%2Fi1Uke8EYrqvl1Tz2IHhMf3NpBOkZvvQ1lGlU6%2Fcalq5rR4QAXlDfNUH0XSDGqFHPWZHInuDox55m4cTXNAr%2BIhr%2F29CoEIedZdjBe%2FCrRknZnytou9XTfimjWFrXWv%2Fgy%2BQQDLItUxK%2FcCBNCfpPOwJms7V6D3bKMuu3OROY6Qi5TmgQ41Uh1jgjtPzkkpfFtkGF1GeXkLFF%2B97DRbG%2FdNRpMZtFVNO44fd7bKKp0lQLs0ARrv4r1fMUqW2X543AUgFLhy2KKMPY99xpFgh9a7j0iCbSGyUu%2FhcRm5sw9%2Byfo34lVYneQzhUx1RXLuHwufJ7FxfIREfquk63pvSlHLcLPe0Kjzzleo2k1XRPVFF%2B535IaHXuToXDnvSiDogtePXtuMkagAFi%2Fvv2di9tj8xPOwOBPb2M4ZQwRhMwIlFlWFsyP8DA10P4L%2B1igDfjOUiFicITWa89o9%2Fq6DzKxgYCKK0tPemhu%2Fsn4NaLbbR2EhUhk%2Fw5zSSPcveF6WU3ptrQIBkQRv2kOTn4mvQGLmh5DNXNKGyf6KrtK6HaJmqP2aBuFTNnUCAA&u=80b5686c44df4b0f8eab39789ba3359c&x-oss-access-key-id=STS.NUtQuMJHJZjdVUNoUqwN4AnN7&x-oss-additional-headers=referer&x-oss-expires=1716190923&x-oss-signature=W7KXWq1u5q%2FtFJsYvpcHtmuEs6UR9%2Fxw0pzcggcuJyk%3D&x-oss-signature-version=OSS2" --referer="https://www.aliyundrive.com/" --user-agent="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36"

go协程里面的for循环 与 for循环里面创建go协程

go协程意味着并行 以并行的方式部署；通过通道来通信

纳秒 ns 1e9
time.Sleep(2 * 1e9) // sleep for 2 seconds
の

一个并发程序可以在一个处理器或者内核上使用多个线程来执行任务


通过通信来共享内存

GOROOT=C:\Go
GOPATH=C:\Users\Administrator\go

go env -w GOPROXY=https://goproxy.cn
go env -w GO111MODULE=off
go env -w GOBIN=C:\Users\Administrator\go\bin
go env -w GOBIN=/somehere/else/bin

go env -u GOBIN # unset a variable 

go mod init example.com/packageName

go mod edit -module="example.com/websocket"

go mod edit -replace example.com/rpc_objects=../rpc_objects

go mod tidy

go clean -modcache # remove all download modules

go build # 编译包及其依赖项
go list -f '{{.Target}}' # 返回go install 安装路径
# GOBIN=C:\Users\Administrator\go\bin
go install # 编译并安装包  

# go install -v golang.org/x/tools/gopls@latest
# go install $GOPATH/src/goprograms/src/uc

byte 类型是 uint8 的别名
var ch byte = 65 或 var ch byte = '\x41'
rune 也是 Go 当中的一个类型，并且是 int32 的别名
字符串是字节的定长数组。
函数 len() 来获取字符串所占的字节长度
strings.HasPrefix(s, prefix string) bool
strings.HasSuffix(s, suffix string) bool
strings.Contains(s, substr string) bool
strings.Index(s, str string) int
strings.LastIndex(s, str string) int
strings.IndexRune(s string, r rune) int
strings.Replace(str, old, new string, n int) 将字符串 str 中的前 n 个字符串 old 替换为字符串 new，并返回一个新的字符串 string n=-1 替换所有字符串
strings.Count(s, str string) int
strings.Repeat(s, count int) string
strings.ToLower(s) string
strings.ToUpper(s) string
strings.TrimSpace(s) 剔除字符串开头和结尾的空白符号
strings.Trim(s, "cut") 来将开头和结尾的 cut 去除掉
strings.TrimLeft strings.TrimRight
strings.Fields(s) 利用空白作为分隔符将字符串分割为若干块，并返回一个 slice
strings.Split(s, sep) 自定义分割符号对字符串分割，返回 slice 
strings.Join(sl []string, sep string) string
%v []string
strings.NewReader(str) 用于生成一个 Reader 并读取字符串中的内容，然后返回指向该 Reader 的指针
strconv.FormatFloat(f float64, fmt byte, prec int, bitSize int) string 将 64 位浮点型的数字转换为字符串，其中 fmt 表示格式（其值可以是 'b'、'e'、'f' 或 'g'），prec 表示精度，bitSize 则使用 32 表示 float32，用 64 表示 float64
strconv.ParseFloat(s string, bitSize int) (f float64, err error) 将字符串转换为 float64 型。
Duration 类型表示两个连续时刻所相差的纳秒数，类型为 int64。
Location 类型映射某个时区的时间，
UTC 表示通用协调世界时间。
time.Ticker
time.After
time.Sleep（Duration d） 可以实现对某个进程（实质上是 goroutine）时长为 d 的暂停。
i1 := 5
var intP *int = &i1  格式化标识符%p 
intP 存储了 i1 的内存地址；它指向了 i1 的位置，它引用了变量 i1
在指针类型前面加上 * 号（前缀）来获取指针所指向的内容，这里的 * 号是一个类型更改器
var == *(&var)
不能得到一个文字或常量的地址
if val := 10; val > max {
    // do something
}
当不使用 true 或 false 的时候，也可以使用一个 error 类型的变量来代替作为第二个返回值：成功执行的话，error 的值为 nil，否则就会包含相应的错误信息
os.Exit(1)
f, err := os.Open(name)
如果在执行完每个分支的代码后，还希望继续执行后续分支的代码，可以使用 fallthrough 关键字来达到目的。
for 初始化语句; 条件语句; 修饰语句 {}
关键字 continue 只能被用于 for 循环中
函数重载 (function overloading) 指的是可以编写多个同名函数，只要它们拥有不同的形参/或者不同的返回值，
在 Go 里面函数重载是不被允许的。这将导致一个编译错误：
如果需要申明一个在外部定义的函数，你只需要给出函数名与函数签名，不需要给出函数体
函数也可以以申明的方式被使用，作为一个函数类型
关键字 defer 允许我们推迟到函数返回之前（或任意位置执行 return 语句之后）一刻才执行某个语句或函数
当有多个 defer 行为被注册时，它们会以逆序执行
new() 用于值类型和用户定义的类型，如自定义结构
make 用于内置引用类型（切片、map 和管道）
new(T) 分配类型 T 的零值并返回其地址，也就是指向类型 T 的指针,它也可以被用于基本类型：v := new(int)。
make(T) 返回类型 T 的初始化之后的值，因此它比 new() 进行更多的工作
trings.Map 函数可以用于对字符串中的每个字符应用一个函数，然后返回一个新的字符串
func Map(mapping func(rune) rune, s string) string
type %T
value %v


内存缓存技术 递归 大量进行相同参数的运算 纯函数(相同输入必定获得相同输出)
数组长度也是数组类型的一部分，所以 [5]int 和 [10]int 是属于不同类型的
var identifier [len]type
Go 语言中的数组是一种 值类型，所以可以通过 new() 来创建： var arr1 = new([5]int)
声明切片的格式是： var identifier []type（不需要说明长度）
一个切片在未初始化之前默认为 nil，长度为 0

var items 
数组
items := [...]{10, 20, 30, 40} 


切片
slice := make([]type, length, capacity)
sl := []int{1, 2, 3}  // var sl []int == nil
s := "this is a test"
c := []byte(s)   //  copy(dst []byte, src string)


copy  把src复制到dst，从索引0开始覆盖, 拷贝个数是 src 和 dst 的长度最小值
append  方法将 0 个或多个具有相同类型 s 的元素追加到切片后面并且返回新的切片
排序
sort.Ints
sort.IntsAreSorted
sort.Float64s
sort.Strings
标准库的搜索算法使用的是二分法，搜索前需要排序
SearchInts SearchFloat64s SearchStrings

Map  映射  
一种元素对的无序集合，快速寻找值的理想结构 本质是散列表
var map1 map[keytype]valuetype
var map1 map[string]int  // nil
mapCreated := make(map[string]float32)
mapCreated := map[string]float32{}
val1, isPresent = map[key1] isPresent判断key1是否存在 if _, ok := map[key1]; ok{}
通过 key 在 map 中寻找值是很快的，比线性查找快得多，但是仍然比从数组和切片的索引中直接读取要慢 100 倍；所以如果你很在乎性能的话还是建议用切片来解决问题。
delete(map1, key1)

regexp
ok, _ = regexp.Match(pat, []byte(searchIn))

ok, _ = regexp.MatchString(pat, searchIn)

9.2  go make

go install google.golang.org/api/urlshortener/v1@latest

google.golang.org/api/urlshortener

结构体struct 值类型
使用 new() 函数给一个新的结构体变量分配内存，它返回指向已分配内存的指针
type struct1 struct {
    lock sync.Mutex
    i1 int
    f1 float32
    str string
}
ms := new(struct1)
ms.i1 = 10
ms.f1 = 15.5
ms.str = "Chris"

ms := &struct1{10, 15.5, "Chris"}
var ms struct1 = struct1{10, 15.5, "Chris"}
struct1 = struct1{i1:10, f1:15.5, str:"Chris"} 顺序不必一致，并且可以忽略字段

链表 
type Node struct {
    data float64
    su *Node
}
双向链表 
type Node struct {
    pr *Node 
    data float64
    su *Node 
}
二叉树 
type Node struct {
    le *Node 
    data float64
    ri *Node
}

size := unsafe.Sizeof(T{})

在接收者是指针时，方法可以改变接收者的值（或状态）
当参数作为指针传递，即通过引用调用时，函数也可以改变参数的状态
接收者,基本类型,必须在和方法同样的包中被声明。
如果想要方法改变接收者的数据，就在接收者的指针类型上定义该方法。否则，就在普通的值类型上定义方法
结构体内嵌和自己在同一个包中的结构体时，可以彼此访问对方所有的字段和方法。


多态：根据当前的类型选择正确的方法，
或者说：同一种类型在不同的实例上似乎表现出不同的行为。

类型断言 
if v, ok := varI.(T); ok { // v 是 varI 转换到类型 T 的值, ok is true
    Process(v)
    return 
}









strconv.FormatFloat(f float64, fmt byte, prec int, bitSize int)
 string 将 64 位浮点型的数字转换为字符串，
 其中 fmt 表示格式
 （其值可以是 'b'、'e'、'f' 或 'g'），
 prec 表示精度，
 bitSize 则使用 32 表示 float32，用 64 表示 float64






managing dependancies 
https://go.dev/doc/modules/managing-dependencies#naming_module



GO111MODULE
fmt.Sprintf 
strconv.FormatFloat
9.11 在 Go 程序中使用外部库
# 用洗衣机洗衣服，没把放衣服的盆拿走，后来去拿洗好的衣服，盆就没了，真TM晦气








