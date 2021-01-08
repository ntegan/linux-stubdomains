


.DEFAULT_GOAL=all

DOCKER_CONTAINER_TAG=stubdom_build_container




build_container: Dockerfile
	docker build -t $(DOCKER_CONTAINER_TAG) .

all: build_container
clean:
	make -C stubdom clean

containerize:
	docker \
		run \
		-it \
		--rm \
		-v $(CURDIR):/root \
		$(DOCKER_CONTAINER_TAG) \
		/bin/bash

build:
	docker \
		run \
		-it \
		--rm \
		-v $(CURDIR):/root \
		$(DOCKER_CONTAINER_TAG) \
		/root/build.sh





