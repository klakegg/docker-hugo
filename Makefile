PATH=$(shell pwd)/src/bin:$(shell echo $$PATH)

default: clean prepare build

build:
	@make -f target/bundle/Makefile || (tail -50 target/bundle/build.log && exit 1)

clean:
	@rm -rf target

build-debug: src/bin/buildx
	@make -f target/bundle/Makefile DEBUG=true

prepare: src/bin/buildx
	@rm -rf target/bundle
	@docker run --rm -i -v $$(pwd):/work -u $$(id -u) \
		klakegg/docker-project-prepare:edge \
		-t target/bundle
	@mv target/bundle/Makefile target/bundle/Makefile.original
	@cat target/bundle/Makefile.original | sed "s:DOCKER_CLI_EXPERIMENTAL=enabled docker buildx:buildx:g" > target/bundle/Makefile

test: test-docsy test-docuapi

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
	@RELEASE=$(version) bump

src/bin/buildx:
	@wget -q -O src/bin/buildx https://github.com/docker/buildx/releases/download/v0.9.1/buildx-v0.9.1.linux-amd64
	@chmod a+x src/bin/buildx
	@docker buildx create --use

enable-qemu:
	@sudo docker run --rm --privileged multiarch/qemu-user-static --reset -p yes