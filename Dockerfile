FROM eclipse-temurin:11

LABEL maintainer="JW"

ADD https://github.com/gitbucket/gitbucket/releases/download/4.40.0/gitbucket.war /opt/gitbucket.war

RUN ln -s /gitbucket /root/.gitbucket

VOLUME /gitbucket

# 8080 used for http and 9090 is used for ssh
# config the ssh port as 9090 in gitbucket configuration
EXPOSE 8080 9090

CMD ["sh", "-c", "java -jar /opt/gitbucket.war"]
