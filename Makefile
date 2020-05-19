HUGO_VERSION=$(shell cat Dockerfile-base | grep VERSION | head -1 | cut -d = -f 2)

build:
	@bash hooks/local

build-debug:
	@DEBUG=true bash hooks/local

build-templates:
	@rm -rf target/templates
	@mkdir -p target/templates
	@for t in $$(ls templates); do cat templates/$$t | HUGO_VERSION=$(HUGO_VERSION) envsubst > target/templates/$$t; done

build-docsy:
	@rm -rf target/docsy
	@git clone --recurse-submodules --depth 1 https://github.com/google/docsy.git target/docsy
	@docker run --rm -i -v $$(pwd)/target/docsy:/src klakegg/hugo:ext-alpine

build-docuapi:
	@rm -rf target/docuapi
	@git clone --depth 1 https://github.com/bep/docuapi.git target/docuapi
	@docker run --rm -i -v $$(pwd)/target/docuapi:/src klakegg/hugo:ext-alpine

edge:
	@docker login -u $$DOCKER_USERNAME -p $$DOCKER_TOKEN
	@docker tag klakegg/hugo:ext-alpine klakegg/hugo:edge-ext-alpine
	@docker tag klakegg/hugo:ext-debian klakegg/hugo:edge-ext-debian
	@docker tag klakegg/hugo:ext-debian-devcontainer klakegg/hugo:edge-ext-debian-devcontainer
	@docker tag klakegg/hugo:ext-ubuntu klakegg/hugo:edge-ext-ubuntu
	@docker push klakegg/hugo:edge-ext-alpine
	@docker push klakegg/hugo:edge-ext-debian
	@docker push klakegg/hugo:edge-ext-debian-devcontainer
	@docker push klakegg/hugo:edge-ext-ubuntu