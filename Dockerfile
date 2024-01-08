FROM ubuntu:22.04
LABEL author="Shyam Sreenivasan"
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && apt-get install -y --no-install-recommends apache2
RUN a2enmod proxy proxy_http
RUN mkdir -p /etc/apache2/logs/
# Disable the default Apache virtual host configuration file
RUN a2dissite 000-default.conf
# Copy Apache configuration file
COPY ./config/apache2.conf /etc/apache2/sites-available/apache2.conf
RUN a2ensite apache2.conf

EXPOSE 80
CMD ["apache2ctl", "-D", "FOREGROUND"]