VENV_DIR = .venv
REQ_FILE = requirements.txt

build:
	go build -o ./bin/migrate ./src/main.go

run:
	go run ./src/main.go

test:
	go test ./src/... -v

clean:
	rm -rf ./bin
	@rm -rf $(VENV_DIR)

compose:
	docker-compose -f docker/docker-compose.yml down --volumes
	docker-compose -f docker/docker-compose.yml up --build

venv:
	@-python3 -m venv $(VENV_DIR)
	@-$(VENV_DIR)/bin/pip install -r $(REQ_FILE)

lint: venv
	@$(VENV_DIR)/bin/sqlfluff lint migrations/*.sql

fix: venv
	@$(VENV_DIR)/bin/sqlfluff fix migrations/*.sql
