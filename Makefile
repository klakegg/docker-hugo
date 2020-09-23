PATH=$(shell pwd)/src/bin:$(shell echo $$PATH)

build:
	@make -f target/bundle/Makefile

clean:
	@rm -rf target

build-debug:
	@make -f target/bundle/Makefile DEBUG=true

prepare:
	@rm -rf target/bundle
	@docker run --rm -i -v $$(pwd):/work -u $$(id -u) \
		klakegg/docker-project-prepare:edge \
		-t target/bundle

test-docsy:
	@rm -rf target/test/docsy
	@git clone --recurse-submodules --depth 1 https://github.com/google/docsy.git target/test/docsy
	@docker run --rm -i -v $$(pwd)/target/test/docsy:/src -u $$(id -u) klakegg/hugo:ext-alpine

test-docuapi:
	@rm -rf target/test/docuapi
	@git clone --depth 1 https://github.com/bep/docuapi.git target/test/docuapi
	@docker run --rm -i -v $$(pwd)/target/test/docuapi:/src -u $$(id -u) klakegg/hugo:ext-alpine

push-edge:
	@make -f target/bundle/Makefile push-edge

push-release:
	@make -f target/bundle/Makefile push-stable

bump:
	@bump