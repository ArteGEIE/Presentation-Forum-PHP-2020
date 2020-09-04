export UID = $(shell id -u)

start:
	docker run --rm -p 1948:1948 -v ${PWD}:/slides -u=${UID} webpronl/reveal-md:latest
