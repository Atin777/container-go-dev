all: bin/example
test: lint unit-test

PLATFORM=linux/amd64

.PHONY: bin/example
bin/example:
	@docker build .	--target bin --output bin/ --platform ${PLATFORM}

.PHONY: unit-test
unit-test:
	@docker build . --target unit-test

.PHONY: lint
lint:
	@docker build . --target lint
