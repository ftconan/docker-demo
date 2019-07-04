RUN groupadd -r redis && useradd -r -g redis redis
USER redis
RUN ["redis-server"]
# create redis user, gosu
RUN groupadd -r redis && useradd -r -g redis redis
# download gosu
RUN wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/1.7/gosu-amd64" \
    && chmod +x /usr/local/bin/gosu \
    && gosu nobody true
# set CMD, use redis user
CMD ["exec", "gosu", "redis", "redis-server"]

