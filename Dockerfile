FROM golang:1.23
WORKDIR /app
COPY * ./
RUN go mod download
RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o .
CMD ["/app/final-project-12-sprint"]