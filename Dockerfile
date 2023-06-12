FROM ubuntu
RUN apt update
RUN apt install apache2 -y
RUN apt install git -y
RUN rm -f /var/www/html/index.html
RUN git clone https://github.com/aashutosh00/website.git /var/www/html/
ENTRYPOINT apachectl -D FOREGROUND
