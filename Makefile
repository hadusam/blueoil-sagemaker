BASE_IMAGE:=blueoil/blueoil:latest
IMAGE_NAME:=blueoil_$$(id -un)
BUILD_VERSION:=$(shell git describe --tags --always --dirty --match="v*" 2> /dev/null || cat $(CURDIR/.version 2> /dev/null || echo v0))

default: build

.PHONY: build
build:
	# Build docker image
	docker build -t $(IMAGE_NAME)_sagemaker:$(BUILD_VERSION) --build-arg base_image="$(BASE_IMAGE)" -f Dockerfile .

.PHONY: clean
clean:
	# Clean created files
	docker rmi  $(IMAGE_NAME):$(BUILD_VERSION)
	rm -rf tmp/*
