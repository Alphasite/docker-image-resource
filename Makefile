IMAGE_NAME=docker-image-resource
REPOSITORY=vaneci
TAG=$(REPOSITORY)/$(IMAGE_NAME)

.PHONY: default build push

default: build

build:
	docker build -t $(IMAGE_NAME) .
	docker tag $(IMAGE_NAME) $(TAG)

push:
	docker push $(TAG)
