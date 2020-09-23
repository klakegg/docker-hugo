PATH=$(shell pwd)/src/bin:$(shell echo $$PATH)

build:
	@cd src && bash hooks/local

clean:
	@rm -rf target

build-debug:
	@cd src && DEBUG=true bash hooks/local

prepare:
	@rm -rf target/bundle
	@mkdir -p target/bundle
	@docker run --rm -i -v $$(pwd):/work -u $$(id -u) \
		klakegg/dockerfile-import:edge \
		src/docker/Dockerfile target/bundle/Dockerfile
	@cp -r src/files target/bundle/

test-docsy:
	@rm -rf target/test/docsy
	@git clone --recurse-submodules --depth 1 https://github.com/google/docsy.git target/test/docsy
	@docker run --rm -i -v $$(pwd)/target/test/docsy:/src -u $$(id -u) klakegg/hugo:ext-alpine

test-docuapi:
	@rm -rf target/test/docuapi
	@git clone --depth 1 https://github.com/bep/docuapi.git target/test/docuapi
	@docker run --rm -i -v $$(pwd)/target/test/docuapi:/src -u $$(id -u) klakegg/hugo:ext-alpine

push-edge:
	@push-tag

push-release:
	@push-release

bump:
	@bump