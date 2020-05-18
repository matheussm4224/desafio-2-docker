FROM golang:1.14.3-alpine3.11

WORKDIR /var/www
RUN rm -rf /var/www/html
COPY . /var/www

EXPOSE 9000

ENTRYPOINT ["go", "run", "code.go"]