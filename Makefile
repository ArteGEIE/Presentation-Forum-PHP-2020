export UID = $(shell id -u)

help:
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

DOCKER := docker run --rm -p 1948:1948 -v ${PWD}:/slides -u=${UID} webpronl/reveal-md:latest

start: ## start slides.md
	$(DOCKER) slides.md --theme arte.css

build: ## build slides to html in public dir
	rm -rf public
	$(DOCKER) slides.md --theme arte.css --static public
	cp arte.svg Barna-Regular.woff2 public/_assets/
