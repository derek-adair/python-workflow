FROM selenium/node-firefox as firefox
FROM derekadair/python-workflow:onbuild
MAINTAINER Derek Adair "d@derekadair.com"
COPY --from=firefox /usr/bin/firefox /usr/bin/firefox
COPY --from=firefox /usr/bin/geckodriver /usr/bin/geckodriver
