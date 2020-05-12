IMAGE ?= quay.io/saschagrunert/podman-static:latest

all:
	podman build -t $(IMAGE) .

.PHONY: push
push:
	podman push $(IMAGE)
