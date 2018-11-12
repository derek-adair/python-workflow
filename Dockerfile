# derekadair/python-workflow:base
FROM python:3.5-jessie
MAINTAINER Derek Adair "d@derekadair.com"

# install virtualenv
RUN pip install --upgrade virtualenv pip && \
    mkdir /virtualenv &&  \
    virtualenv /virtualenv 

ENV PATH=/virtualenv/bin:$PATH

CMD ["python"]
