FROM java:8-jre
ADD micro-server-douyin-0.0.1-SNAPSHOT.jar /opt/douyin-api/
RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
ENV TZ "Asia/Shanghai"
WORKDIR /opt/douyin-api/
CMD ["java","-Xmx512m","-Xms128m","-XX:PermSize=128m","-XX:MaxPermSize=512m","-XX:+UseSerialGC","-jar", "micro-server-douyin-0.0.1-SNAPSHOT.jar"]
