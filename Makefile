
build:
	go build -o ./bin/migrate ./src/main.go

run:
	go run ./src/main.go

test:
	go test ./src/... -v

lint:
	golangci-lint run

clean:
	rm -rf ./bin

compose:
	docker-compose -f docker/docker-compose.yml down --volumes
	docker-compose -f docker/docker-compose.yml up --build
