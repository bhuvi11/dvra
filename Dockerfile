FROM 723637732594.dkr.ecr.us-west-2.amazonaws.com/openjdk-8-jre-alpine:0a6b7ab
ARG artifact_name
COPY  target/$artifact_name.jar /usr/src/shiftleft-api/shiftleft-api.jar
WORKDIR /usr/src/shiftleft-api/
ENTRYPOINT  ["java", "-jar", "shiftleft-api.jar"]
EXPOSE 4444
