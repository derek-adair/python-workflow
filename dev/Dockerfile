FROM python:3.5-jessie as enterbuild
# Enter
RUN curl http://eradman.com/entrproject/code/entr-4.1.tar.gz > entr.tar.gz
RUN tar -xvf entr.tar.gz
WORKDIR /eradman-entr-f4e2cbe57708
RUN ./configure
RUN make test
RUN make install
RUN mv entr /usr/bin/

FROM derekadair/python-workflow:onbuild
MAINTAINER Derek Adair "d@derekadair.com"
# AG
RUN apt-get update && apt-get -y upgrade
COPY --from=enterbuild /usr/bin/entr /usr/bin/entr
RUN apt install silversearcher-ag
