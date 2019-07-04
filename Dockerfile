FROM alpine:3.4

RUN addgroup -S redis && adduser -S -G redis redis

ENTRYPOINT ["docker-entrypoint.sh"]

EXPOSE 6379
CMD ["redis-server"]
