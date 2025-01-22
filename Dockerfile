FROM golang:1.23

WORKDIR /src

RUN echo 'package main\nimport "fmt"\n\nfunc main() {\n fmt.Println("hello, world")\n}' > main.go

RUN go build -o /bin/hello main.go

FROM scratch
COPY --from=0 /bin/hello /bin/hello
