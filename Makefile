export UID = $(shell id -u)

help:
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

DOCKER := docker run --rm -p 1948:1948 -v ${PWD}:/slides -u=${UID} webpronl/reveal-md:latest

start-docker: ## start slides.md using Docker
	$(DOCKER) slides.md

build-docker: ## build slides to html in public dir using Docker
	rm -rf public
	$(DOCKER) slides.md --static public --static-dirs=images
	cp arte.svg Barna-Regular.woff2 public/_assets/

install: ## Install dependencies
	npm i

start: ## start slides.md on watch mode
	npm run start

build:  ## build slides to html in public dir
	rm -rf public
	npm run build
	cp arte.svg Barna-Regular.woff2 public/_assets/

pdf: ## export to pdf, slides.pdf
	rm -rf slides.pdf
	npm run export-pdf
