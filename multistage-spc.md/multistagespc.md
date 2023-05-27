* To build spc we need jdk-17,git & maven
* To run we need ony jdk-17
* Manual steps:-
* gitclone https://github.com/spring-projects/spring-petclinic.git
* cd spring-petclinic

* search for the image which has maven having jdk-17 in dockerhub.

FROM alpine/git AS generator
RUN git clone https://github.com/spring-projects/spring-petclinic.git && \ pwd && ls /git/spring 
* This stage builds java



FROM maven:3-amazoncorretto-17 AS builder
COPY --from=vcs /git /spring-petclinic
RUN cd spring-petclinic && mvn package

FROM amazoncorretto:17-alpine-jdk
LABAEL author="hema"
EXPOSE 8080
ARG HOME_DIR=/spc
WORKDIR ${HOME_DIR}
COPY --from=builder /spring-petclinic/target/spring-*.jar ${HOME_DIR}/ spring-petclinic.jar
CMD ["java","-jar","spring-petclinic.jar"]
