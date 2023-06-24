FROM golang:alpine


WORKDIR /app

COPY go.mod go.sum ./

RUN go mod download

COPY ./cmd/app/ ./

COPY ./ ./

RUN go build -o todo-app .

CMD ["./todo-app"]