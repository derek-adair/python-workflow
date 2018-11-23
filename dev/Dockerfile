FROM selenium/node-firefox as firefox

FROM python:3.5-jessie as entrbuilder
RUN curl http://eradman.com/entrproject/code/entr-4.1.tar.gz > entr.tar.gz
RUN tar -xvf entr.tar.gz
WORKDIR /eradman-entr-f4e2cbe57708
RUN ./configure
RUN make test
RUN make install
RUN mv entr /usr/bin/

FROM derekadair/python-workflow:onbuild
MAINTAINER Derek Adair "d@derekadair.com"
COPY --from=firefox /usr/bin/firefox /usr/bin/firefox
COPY --from=firefox /usr/bin/geckodriver /usr/bin/geckodriver
COPY --from=entrbuilder /usr/bin/entr /usr/bin/entr
