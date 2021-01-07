


.DEFAULT_GOAL=all

DOCKER_CONTAINER_TAG=stubdom_build_container




build_container: Dockerfile
	docker build -t $(DOCKER_CONTAINER_TAG) .

all: build_container

#docker run --rm -v $sharedfolder:/mnt -it --name building_xen xen_build /bin/bash





