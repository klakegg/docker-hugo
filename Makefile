build:
	@bash hooks/local

build-debug:
	@DEBUG=true bash hooks/local

build-docsy:
	@rm -rf docsy
	@git clone --recurse-submodules --depth 1 https://github.com/google/docsy.git docsy
	@docker run --rm -i -v $(shell pwd)/docsy:/src klakegg/hugo:ext-alpine

build-docuapi:
	@rm -rf docuapi
	@git clone --depth 1 https://github.com/bep/docuapi.git docuapi
	@docker run --rm -i -v $(shell pwd)/docuapi:/src klakegg/hugo:ext-alpine

