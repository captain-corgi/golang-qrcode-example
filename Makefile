all: tidy vendor build run
all-gorm: tidy vendor build-gorm run-gorm

build:
	go build -o qrcode cmd/qrcode/main.go
run:
	./qrcode

build-gorm:
	go build -o qrcode cmd/qrcode/main.go
run-gorm:
	./qrcode

clean:
	rm ./qrcode
	rm -rf vendor

tidy:
	go mod tidy

.PHONY: vendor
vendor:
	go mod vendor

.PHONY: coverage
# coverage:
# 	go test \
# 		-race -covermode=atomic -timeout 30s \
# 		-coverprofile=coverage/coverage.out \
# 		github.com/captain-corgi/golang-os-example/pkg/iptrans