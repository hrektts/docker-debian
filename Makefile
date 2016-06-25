all: build

build:
	@docker build --tag=hrektts/debian:latest .

release: build
	@docker build --tag=hrektts/debian:$(shell cat VERSION) .
