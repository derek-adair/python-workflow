FROM python:3.5-alpine
WORKDIR /code
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
ENV PATH=/virtualenv/bin:$PATH

COPY requirements.* /code/
RUN pip install -r requirements.in
