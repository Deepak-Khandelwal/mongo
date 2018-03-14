From centos
MAINTAINER deepak.khandelwal@xgenplus.com
COPY mongodb-org.repo /etc/yum.repos.d/
RUN yum update -y
RUN yum install wget -y
RUN yum install mongodb-org -y
RUN mkdir -p /data/db
EXPOSE 27017
CMD ["--port 27017"]
ENTRYPOINT usr/bin/mongod
