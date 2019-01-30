FROM maven:3.6.0-jdk-11-slim AS maven-build
RUN apt-get update && \
    apt-get install git-all -y
RUN git clone https://github.com/hardikgw/spring-boot-demo.git
RUN mkdir /app &&\
    cp -r /spring-boot-demo/* /app
RUN cd /app && mvn install

FROM openjdk:11-jre-slim
RUN apk update && apk add ca-certificates && rm -rf /var/cache/apk/*
WORKDIR /app
COPY --from=maven-build /app/target/*.jar /app

EXPOSE 8080
ENTRYPOINT java -jar batch-demo-1.1.2-RELEASE.jar