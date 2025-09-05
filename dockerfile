FROM alpine:latest
RUN apk add --update --no-cache postgresql-client
ADD table.sql /
ADD schema.sql /
COPY run.sh /
CMD ["./run.sh"]