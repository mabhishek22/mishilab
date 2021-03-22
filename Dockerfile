FROM centos:7 

RUN yum install httpd -y 

COPY index.html /var/www/html/index.html 

COPY nginx.conf  /etc/nginx/conf.d/nginx.conf



CMD httpd -DFOREGROUND

EXPOSE 443 

USER centos