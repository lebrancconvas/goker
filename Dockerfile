FROM golang:1.20-alpine

WORKDIR /use/src/app 

COPY go.mod go.sum ./
RUN go mod install && go mod verify

COPY . .
RUN go build -v -o /usr/src/app ./...

CMD ["main"]