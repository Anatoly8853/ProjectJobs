FROM golang:1.22

WORKDIR /app

RUN go mod download

COPY . .

RUN go build -o main .

CMD ["./main"]