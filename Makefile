NAME = beeman/deno-examples
VERSION = 0.0.1

.PHONY: all build tag_latest

all: build

build:
	docker build -t $(NAME):$(VERSION) --rm .

run:
	docker run -it --rm --name beeman_deno -v $(shell pwd)/apps:/apps $(NAME):$(VERSION) bash

tag_latest:
	docker tag $(NAME):$(VERSION) $(NAME):latest

release: tag_latest
	@if ! docker images $(NAME) | awk '{ print $$2 }' | grep -q -F $(VERSION); then echo "$(NAME) version $(VERSION) is not yet built. Please run 'make build'"; false; fi
	docker push $(NAME)
	@echo "*** Don't forget to create a tag by creating an official GitHub release."
