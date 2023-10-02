FROM python:3.11.5

RUN apt update && \
    apt install -y \
    jq \
    curl \
    locales \
    default-mysql-client \
    && locale-gen ja_JP.UTF-8

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
ENV TZ=Asia/Tokyo
ENV LANG ja_JP.UTF-8

WORKDIR /django-tutorial

COPY ./django-tutorial/requirements.txt /django-tutorial/
RUN pip install --upgrade pip && pip install -r requirements.txt