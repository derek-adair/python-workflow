FROM derekadair/python-workflow:3.4
RUN mkdir /code
WORKDIR /code

ONBUILD COPY requirements.txt /code/
ONBUILD RUN virtualenv -p python3 /env
ONBUILD RUN /env/bin/pip install -r requirements.txt

ONBUILD COPY . /code
