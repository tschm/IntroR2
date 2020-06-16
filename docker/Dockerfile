FROM rocker/tidyverse:3.6.3

RUN apt-get update -qq && apt-get -y --no-install-recommends install \
  libxml2-dev \
  && install2.r --error \
    --deps TRUE \
    tidyverse \
    dplyr

COPY ./work /home/rstudio/documents
RUN chown -R ${NB_USER}:${NB_USER} /home/rstudio/documents
