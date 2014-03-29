FROM stackbrew/ubuntu:precise

RUN apt-get update && apt-get install -y python-software-properties wget && add-apt-repository ppa:mapnik/boost
RUN wget -O - http://dl.hhvm.com/conf/hhvm.gpg.key | apt-key add -
RUN echo 'deb http://dl.hhvm.com/ubuntu precise main' > /etc/apt/sources.list.d/hhvm.list
RUN apt-get update && apt-get install -y hhvm
RUN add-apt-repository ppa:nginx/stable && apt-get update && apt-get install -y nginx
RUN /usr/share/hhvm/install_fastcgi.sh
