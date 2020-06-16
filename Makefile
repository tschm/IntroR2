#!make
SHELL := /bin/bash

.PHONY: help tag

.DEFAULT: help

help:
	@echo "make tag"
	@echo "       Make a tag on Github."

build:
	docker-compose build rstudio

rstudio:
	echo "http://localhost:8888"
	docker-compose up rstudio

tag: test
	git tag -a ${PROJECT_VERSION} -m "new tag"
	git push --tags

