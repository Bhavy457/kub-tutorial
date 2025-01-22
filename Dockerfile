FROM golang:1.23 AS builder

WORKDIR /src

RUN echo 'package main\n\import "fmt"\n\nfunc main{} {\n fmt.Println("hello, world")\n}' > main.go

RUN go build -o /bin/hello main.go

FROM scratch

COPY --from=builder /bin/hello /bin/hello

CMD ["/bin/hello"]
