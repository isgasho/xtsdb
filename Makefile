export GO111MODULE=on
export GOFLAGS=-mod=vendor

.PHONY: build
build: ingester flusher querier

.PHONY: ingester
ingester:
	go build ./cmd/xtsdb-ingester

.PHONY: flusher
flusher:
	go build ./cmd/xtsdb-flusher

.PHONY: querier
querier:
	go build ./cmd/xtsdb-querier
