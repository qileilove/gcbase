FROM twgc/base:0.3

# Install Nginx.
RUN \
  add-apt-repository -y ppa:nginx/stable && \
  apt-get update && \
  apt-get install -y nginx && \
  rm -rf /var/lib/apt/lists/* && \
  # should make not daemon, or container will exit after run
  echo "\ndaemon off;" >> /etc/nginx/nginx.conf && \
  chown -R www-data:www-data /var/lib/nginx

# Define mountable directories.
VOLUME ["/etc/nginx/sites-enabled", "/etc/nginx/certs", "/etc/nginx/conf.d", "/var/log/nginx"]

# Expose ports.
EXPOSE 80
EXPOSE 443

RUN mkdir /nginx
ADD entrypoint.sh /nginx/entrypoint.sh

RUN chmod +x '/nginx/entrypoint.sh'

ENTRYPOINT [ "/nginx/entrypoint.sh" ]

# Define default command.
CMD ["nginx"]

