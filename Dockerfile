FROM debian:jessie
RUN apt-get update && apt-get upgrade -y && apt-get install -y apache2-mpm-event supervisor apache2-utils
RUN mkdir -p /var/lock/apache2 /var/run/apache2 /var/log/supervisor
ADD supervisord.conf /etc/supervisord.conf
EXPOSE 80
CMD ["/usr/bin/supervisord"]
