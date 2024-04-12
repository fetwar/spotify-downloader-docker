COMPOSE_RUN ?= docker compose run --rm -T
c ?= --help

.PHONY: spotdl shell build

run:
	${COMPOSE_RUN} spotdl "${c}"

build:
	docker compose build

shell:
	${COMPOSE_RUN} -it spotdl --entrypoint /bin/bash

