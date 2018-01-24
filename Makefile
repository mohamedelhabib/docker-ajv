IMAGE_NAME ?= ajv-cli-docker-candidate

.PHONY: test

build:
	docker build --tag $(IMAGE_NAME) $(PWD)

test:
	docker run -v $(PWD)/test:/data a2e3876b54a6 validate -s schema.json -d doc.json
