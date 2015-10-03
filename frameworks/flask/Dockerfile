FROM derekadair/python-workflow:dev
ADD . /code
WORKDIR /code
RUN /env/bin/pip install -r requirements.txt
CMD /env/bin/python app.py
