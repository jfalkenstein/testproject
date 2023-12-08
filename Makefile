run-database:
	docker run -e POSTGRES_PASSWORD=password -p 5432:5432 postgres

clean:
	go mod tidy
	go fmt ./cmd
	go fmt ./pkg

package: clean
	go build -o build/app cmd/main.go
