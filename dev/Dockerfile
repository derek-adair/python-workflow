FROM derekadair/python-workflow:onbuild
MAINTAINER Derek Adair "d@derekadair.com"
# Required for pscopg2
RUN DEBIAN_FRONTEND=noninteractive && \
	apt-get update -y && \
	apt-get install -y libpq-dev xvfb firefox

# cleanup
RUN apt-get clean
