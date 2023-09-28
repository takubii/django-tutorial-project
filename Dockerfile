FROM python:3.11.5

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

WORKDIR /django-tutorial

COPY ./django-tutorial/requirements.txt /django-tutorial/
RUN pip install --upgrade pip && pip install -r requirements.txt