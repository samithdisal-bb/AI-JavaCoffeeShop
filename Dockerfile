FROM maven:3.9.12-amazoncorretto-8-al2023
RUN mkdir /usr/src/project
COPY . /usr/src/project
WORKDIR /usr/src/project
RUN mvn package -DskipTests
CMD mvn spring-boot:run
