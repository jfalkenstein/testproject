FROM golang:1.21

WORKDIR /app

COPY go.mod go.sum ./
RUN go mod download
COPY pkg/ ./
COPY cmd/ ./

RUN CGO_ENABLED=0 GOOS=linux go build -o /testproject


CMD ["/testproject"]