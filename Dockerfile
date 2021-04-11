# Pull base image
FROM python:3.8

LABEL maintainer = "Herson Melo" \
      name = "python-api" \
      version = "0.1"

# Set environment varibles
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

WORKDIR /api/

COPY ./requirements.txt /api

# Install dependencies
RUN pip install -r requirements.txt

EXPOSE 8000