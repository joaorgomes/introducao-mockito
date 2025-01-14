FROM maven:3.9.9-amazoncorretto-23
LABEL maintainer="paulopereira.dev"

EXPOSE 8080

RUN mkdir -p /home/taskmanagement

COPY ./taskmanagement /home/taskmanagement

WORKDIR /home/taskmanagement
