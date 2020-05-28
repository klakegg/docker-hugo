PATH=$(shell pwd)/src/bin:$(shell echo $$PATH)
HUGO_VERSION=$(shell cat src/lib/base/Dockerfile-base | grep VERSION | head -1 | cut -d = -f 2)

build-docker:
	@cd src && bash hooks/local

build-docker-debug:
	@cd src && DEBUG=true bash hooks/local

test-docsy:
	@rm -rf target/docsy
	@git clone --recurse-submodules --depth 1 https://github.com/google/docsy.git target/docsy
	@docker run --rm -i -v $$(pwd)/target/docsy:/src -u $$(id -u) klakegg/hugo:ext-alpine

test-docuapi:
	@rm -rf target/docuapi
	@git clone --depth 1 https://github.com/bep/docuapi.git target/docuapi
	@docker run --rm -i -v $$(pwd)/target/docuapi:/src -u $$(id -u) klakegg/hugo:ext-alpine

edge-tag:
	@docker tag klakegg/hugo:ext-alpine klakegg/hugo:edge-ext-alpine
	@docker tag klakegg/hugo:ext-debian klakegg/hugo:edge-ext-debian
	@docker tag klakegg/hugo:ext-ubuntu klakegg/hugo:edge-ext-ubuntu

edge-push:
	@docker login -u $$DOCKER_USERNAME -p $$DOCKER_TOKEN
	@docker push klakegg/hugo:edge-ext-alpine
	@docker push klakegg/hugo:edge-ext-debian
	@docker push klakegg/hugo:edge-ext-ubuntu

bump:
	@bump