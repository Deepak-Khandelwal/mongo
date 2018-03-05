From centos
MAINTAINER deepak.khandelwal@xgenplus.com
RUN echo"[mongodb-org-3.4]" > /etc/yum.repos.d/mongodb-org.repo
RUN echo"name=MongoDB Repository" >> /etc/yum.repos.d/mongodb-org.repo
RUN echo"baseurl=https://repo.mongodb.org/yum/redhat/$releasever/mongodb-org/3.4/x86_64/" >>  /etc/yum.repos.d/mongodb-org.repo
RUN echo"gpgcheck=1" >> /etc/yum.repos.d/mongodb-org.repo
RUN echo"enabled=1" >> /etc/yum.repos.d/mongodb-org.repo
RUN echo"gpgkey=https://www.mongodb.org/static/pgp/server-3.4.asc" >> /etc/yum.repos.d/mongodb-org.repo
RUN yum update -y
RUN yum install mongodb-org -y
RUN mkdir -p /data/db
EXPOSE 27017
CMD ["--port 27017"]
ENTRYPOINT usr/bin/mongod