.PHONY: build

all: build

build: Dockerfile
	sudo docker build -t qtile-docker:1.0 .