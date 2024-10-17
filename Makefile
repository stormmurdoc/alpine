all: build

build:
	 docker build -t localhost:alpine .

test:
	docker run -it --rm -v $(shell pwd):/repo git.bueraner.de/alpine:latest
