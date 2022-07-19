FROM centos:7
RUN yum -y install epel-release
RUN yum -y update
RUN yum -y install nginx
RUN mkdir -p /data/storage
WORKDIR /data/storage
add index.html /usr/share/nginx/html
EXPOSE 80/tcp
CMD ["nginx", "-g daemon off;"]
