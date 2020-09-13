PATH=$(shell pwd)/src/bin:$(shell echo $$PATH)

build:
	@cd src && bash hooks/local

clean:
	@rm -rf target

build-debug:
	@cd src && DEBUG=true bash hooks/local

dockerfile-import:
	@mkdir -p target/bundle
	@docker run --rm -i -v $$(pwd):/work -u $$(id -u) \
		klakegg/dockerfile-import \
		src/docker/Dockerfile target/bundle/Dockerfile

test-docsy:
	@rm -rf target/docsy
	@git clone --recurse-submodules --depth 1 https://github.com/google/docsy.git target/docsy
	@docker run --rm -i -v $$(pwd)/target/docsy:/src -u $$(id -u) klakegg/hugo:ext-alpine

test-docuapi:
	@rm -rf target/docuapi
	@git clone --depth 1 https://github.com/bep/docuapi.git target/docuapi
	@docker run --rm -i -v $$(pwd)/target/docuapi:/src -u $$(id -u) klakegg/hugo:ext-alpine

push-edge:
	@push-tag

push-release:
	@push-release

bump:
	@bump