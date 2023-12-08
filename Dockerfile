FROM golang:1.21

WORKDIR /app

COPY go.mod go.sum ./
RUN go mod download
COPY pkg/ ./pkg/
COPY cmd/ ./cmd/

RUN CGO_ENABLED=0 GOOS=linux go build -o /testproject cmd/main.go


CMD ["/testproject"]