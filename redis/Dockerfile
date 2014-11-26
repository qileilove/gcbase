FROM twgc/base:0.1

RUN groupadd -r redis && useradd -r -g redis redis

RUN apt-get update -y 
RUN apt-get install wget -y
RUN apt-get install build-essential -y

RUN wget http://download.redis.io/releases/redis-2.8.17.tar.gz
RUN mkdir -p /usr/src/redis
RUN tar xzf redis-2.8.17.tar.gz -C /usr/src/redis
RUN make -C /usr/src/redis/redis-2.8.17
RUN make -C /usr/src/redis/redis-2.8.17 install

RUN mkdir -p /data/redis && chown redis:redis /data/redis

VOLUME /data

EXPOSE 6379

RUN mkdir ~/redis
ADD entrypoint.sh ~/redis/entrypoint.sh

RUN chmod +x '~/redis/entrypoint.sh'

ENTRYPOINT [ "~/redis/entrypoint.sh" ]

CMD [ "redis-server" ]
