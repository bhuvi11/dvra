FROM ruby:2-alpine
ARG artifact_name
COPY  target/$artifact_name.jar /usr/src/shiftleft-api/shiftleft-api.jar
WORKDIR /usr/src/shiftleft-api/
ENTRYPOINT  ["java", "-jar", "shiftleft-api.jar"]
EXPOSE 4444
