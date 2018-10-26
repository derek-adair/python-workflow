FROM python:3.5-alpine
WORKDIR /app
ENV PATH=/virtualenv/bin:$PATH
RUN apk update && apk upgrade 
RUN apk add curl "postgresql-dev" \
                 "musl-dev" \
                 "gcc" \
                 "linux-headers" \
                 "libffi-dev" \
                 "zlib-dev" \
                 "jpeg-dev"

RUN pip install --no-cache-dir virtualenv && \
    mkdir /virtualenv &&  \
    virtualenv /virtualenv 

COPY pip.conf /virtualenv/
COPY requirements.* /app/
RUN /virtualenv/bin/pip install -r requirements.in
COPY . /app
WORKDIR /app/schmusic
