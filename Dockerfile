FROM python:3.5
MAINTAINER Derek Adair "d@derekadair.com"

RUN apt-get update -y \
    && apt-get install --no-install-recommends -y -q \
        libpq-dev

RUN apt-get clean
