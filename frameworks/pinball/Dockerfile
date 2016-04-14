FROM derekadair/python-workflow:python-2.7

WORKDIR /code
RUN apt-get update && apt-get install --force-yes -y \
    libmysqlclient-dev \
    graphviz
COPY requirements.txt /code/requirements.txt
RUN pip install -r requirements.txt
COPY . /code
