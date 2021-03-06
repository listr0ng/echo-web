FROM golang:1.8.3

WORKDIR /go/src/echo-web
COPY . .

#RUN go-wrapper download   # "go get -d -v ./..."
#RUN go-wrapper install    # "go install -v ./..."

# Bindata工具安装
RUN go get -u github.com/jteeuwen/go-bindata/...

# conf.toml配置端口一致
EXPOSE 8080

# CMD ["go-wrapper", "run"] # ["app"]
CMD ./run.sh -a -t