FROM klakegg/hugo:base-pandoc AS pandoc



FROM klakegg/hugo:ext-alpine

ENV HUGO_PANDOC="pandoc-default"

COPY --from=pandoc /bin/pandoc-default /bin/pandoc-default
