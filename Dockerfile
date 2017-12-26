FROM webdevops/php-apache-dev:centos-7-php56
MAINTAINER nguyen_duy
RUN yum install -y php56w-devel make gcc libxml2-devel curl-devel
RUN pear install pecl/solr
RUN echo "extension=solr.so" > /etc/php.d/solr.ini
RUN service apache2 restart