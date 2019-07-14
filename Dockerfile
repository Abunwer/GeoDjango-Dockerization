FROM python:3.5
ENV PYTHONUNBUFFERED 1
RUN apt-get update ; apt-get --assume-yes install binutils libproj-dev gdal-bin

RUN mkdir /code
WORKDIR /code
ADD requirements.txt /code
RUN pip install -r requirements.txt
ADD . /code/

CMD ./manage.py migrate
