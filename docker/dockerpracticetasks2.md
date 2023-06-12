### Create an alpine container in interactive mode and install python
* manual process:
``` 
docker container run -it --name alpine1 alpine:latest
apk --update upgrade
apk add python3
python3 --version
```
![preview](./Images/docker1.png.png)
* By using dockerfile
* create a dockerfile with
* ---
* FROM alpine:latest
  LABEL author="hema" organization="hs"docker container exec -it postdata /bin/bash
  RUN apk --update upgrade
  RUN apk add python3
  CMD ["python3 --version"]
* ---
* ![preview](./Images/docker2.png.png)
* Then build the image
* <docker image build -t "python" .>
* check for the version
* <python3 --version>
 ### Create a ubuntu container with sleep 1d and then login using exec and install python
* <docker container run -d --name hema ubuntu:latest sleep 1d>
* <docker container exec -it hema /bin/bash>
* <apt update && apt upgrade -y>
* <apt install python3>
* <python3 --version>
* ![preview](./Images/docker3.png.png)
* ![preview](./Images/docker4.png)
* ![preview](./Images/docker5.png)
* ### Create a postgres container with username panoramic and password as trekking. Try logging in and show the databases (query for psql)
* ![preview](./Images/docker6.png)

* ### Try to create a docker file which runs php info page, use ARG and ENV wherever appropriate on Apache & nginx
* Apache
* create a docker file with ARG & ENV for Apache 
* <FROM ubuntu:22.04
LABEL author="hema" organization="hs"
ARG DEBIAN_FRONTEND=noninteractive
RUN apt update && apt install apache2 -y
RUN apt install php libapache2-mod-php -y
RUN echo "<?php phpinfo() ?>" >> /var/www/html/info.php
EXPOSE 80
CMD ["apache2ctl","-D","FOREGROUND"]>
* <docker image build -t apache .>
* < docker container run -d --name php -P apache>
* ![preview](./Images/docker7.png)
* ![preview](./Images/docker9.png)
* after opening apache default page enter '/info.php'in the apache url
* ![preview](./Images/docker8.png)

* ### Create a Jenkins image by creating an own docker file
* refer here for jenkins docs.
* <https://www.jenkins.io/doc/book/installing/linux/>
* dockerfile
* <FROM ubuntu:22.04 
LABEL author="hema" organization="hs"
RUN apt update && apt install openjdk-11-jdk maven curl -y
RUN curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key | tee \
   /usr/share/keyrings/jenkins-keyring.asc > /dev/null
RUN echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian-stable binary/ | tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
RUN apt-get update
RUN apt-get install jenkins -y
EXPOSE 8080
CMD ["/usr/bin/jenkins"]>
* <docker image build -t jenkins .>
* ![preview](./Images/docker10.png)
* <docker conatainer run -d --name hema -P jenkins>
* ![preview](./Images/docker11.png)
* ![preview](./Images/docker12.png)
* ### Create nop commerce and MySQL server and try to make them work by configuring
* <FROM mcr.microsoft.com/dotnet/sdk:7.0
LABEL author="hema" organization="hs" project="hemainfra"
ADD https://github.com/nopSolutions/nopCommerce/releases/download/release-4.60.2/nopCommerce_4.60.2_NoSource_linux_x64.zip /nop/nopCommerce_4.60.2_NoSource_linux_x64.zip
WORKDIR /nop
RUN apt update && apt install unzip -y && \
    unzip /nop/nopCommerce_4.60.2_NoSource_linux_x64.zip && \
    mkdir /nop/bin && mkdir /nop/logs
EXPOSE 5000
CMD [ "dotnet", "Nop.Web.dll","--urls", "http://0.0.0.0:5000" ]>
* <docker image build -t hema .>
* ![preview](./Images/docker13.png)
* <docker container run -d --name hema2 -P hema>
* ![preview](./Images/docker14.png)
* ![preview](./Images/docker15.png)
* create a network bridge for mysql
* < docker network create -d bridge --subnet 10.0.0.0/24 mysqlnetwork>
* ![preview](./Images/docker17.png)
* <docker volume create myvol>
* <docker container run -d --name mysqldb -v myvol:/var/lib/mysql -P -e MYSQL_ROOT_PASSWORD=rootroot -e MYSQL_DATABASE=hyd -e MYSQL_USER=devops -e MYSQL_PASSWORD=rootroot --network mysqlnetwork mysql:8>
* ![preview](./Images/docker18.png)




### write a Docker file for NodeJS application – expressjs
* dockerfile for nodejs application 
* <FROM node:8
  2 LABEL author="hema" organization="hs"
  3 RUN npm install
  4 WORKDIR /usr/src/app
  5 CMD ["npm","start"]
  6 EXPOSE 30000>
* to build the image
* <docker image build -t nodes/node-web-app .>
* [preview](./Images/docker19.png)
* to create the container
* <docker container run -d --name karampuri5 -P node sleep 1d>
* [preview](./Images/docker20.png)
