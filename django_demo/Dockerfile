FROM python:3
ENV PYTHONUNBUFFERED 1
RUN mkdir /django_example
WORKDIR /django_example
COPY requirements.txt /django_example
RUN pip install -r requirements.txt
COPY . /django_example