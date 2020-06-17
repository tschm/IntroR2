#!make
SHELL := /bin/bash
PROJECT_VERSION := 0.0.2

.PHONY: help build rstudio tag

.DEFAULT: help

help:
	@echo "make tag"
	@echo "       Make a tag on Github."

build:
	docker-compose build rstudio

rstudio:
	echo "http://localhost:8787"
	docker-compose up rstudio

tag:
	git tag -a ${PROJECT_VERSION} -m "new tag"
	git push --tags

