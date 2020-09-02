IMAGE_NAME ?= ajv-cli-docker-candidate

.PHONY: test

build:
	docker build --tag $(IMAGE_NAME) $(PWD)

test:
	docker run -v $(PWD)/test:/data $(IMAGE_NAME) validate -s schema.json -d doc.json
