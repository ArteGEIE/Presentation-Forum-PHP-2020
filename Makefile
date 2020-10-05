export UID = $(shell id -u)

help:
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

REVEAL-MD := docker run --rm -p 1948:1948 -v ${PWD}:/slides -u=${UID} webpronl/reveal-md:latest
DECKTAPE := docker run --rm -t -v ${PWD}:/slides -v ${PWD}:${PWD}/public astefanutti/decktape

start-docker: ## start slides.md using Docker
	$(REVEAL-MD) slides.md

build-docker: ## build slides to html in public dir using Docker
	rm -rf public
	$(REVEAL-MD) slides.md --static public
	cp arte.svg Barna-Regular.woff2 public/_assets/
	cp .nojekyll public/

pdf-docker: ## export to pdf, slides.pdf
	rm -rf slides.pdf
	make build-docker
	$(DECKTAPE) --size='1920x1200' reveal ./public/slides.html slides.pdf

install: ## Install dependencies
	npm i

start: ## start slides.md on watch mode
	npm run start

build:  ## build slides to html in public dir
	rm -rf public
	npm run build
	cp arte.svg Barna-Regular.woff2 public/_assets/
	cp .nojekyll public/
