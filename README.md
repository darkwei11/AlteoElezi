# Spring Boot Blog with Registration

## About

This is a project for my assignment to develop a web app using **Spring Boot + Thymeleaf**. 
The idea was to build some basic blogging - web app platform.

It was made using **Spring Boot**, **Spring Security**, **Thymeleaf**, **Spring Data JPA**, **Spring Data REST** and **Docker**. 
Database is in memory **H2**.

There is a login and registration functionality included.

User has his own blog page, where he can add new blog posts. 
Every authenticated user can comment on posts made by other users.
Home page is paginated list of all posts.
Non-authenticated users can see all blog posts, but cannot add new posts or comment.

![blog](https://user-images.githubusercontent.com/51760268/63881351-52c0d980-c9d8-11e9-838a-cbba1c7a1f70.jpg)


![comments](https://user-images.githubusercontent.com/51760268/63881440-84d23b80-c9d8-11e9-9d59-fb7c440ed8e8.jpg)

## Configuration

### Configuration Files

Folder **src/resources/** contains config files for **blog** Spring Boot application.

## How to run

There are several ways to run the application. You can run it from the command line with included Maven Wrapper, Maven or Docker. 

Once the app starts, go to the web browser and visit `http://localhost:8090/home`

Admin username: **admin**

Admin password: **admin**

### Maven Wrapper

#### Using the Maven Plugin

Go to the root folder of the application and type:
```bash
$ chmod +x scripts/mvnw
$ scripts/mvnw spring-boot:run
```

#### Using Executable War

Or you can build the WAR file with 
```bash
$ scripts/mvnw clean package
``` 

Then you can run the WAR file:
```bash
$ java -jar target/blog-0.0.1-SNAPSHOT.war
```

### Maven

Open a terminal and run the following commands to ensure that you have valid versions of Java and Maven installed:

```bash
$ java -version
java version "1.8.0_102"
Java(TM) SE Runtime Environment (build 1.8.0_102-b14)
Java HotSpot(TM) 64-Bit Server VM (build 25.102-b14, mixed mode)
```

```bash
$ mvn -v
Apache Maven 3.3.9 (bb52d8502b132ec0a5a3f4c09453c07478323dc5; 2015-11-10T16:41:47+00:00)
Maven home: /usr/local/Cellar/maven/3.3.9/libexec
Java version: 1.8.0_102, vendor: Oracle Corporation
```

#### Using the Maven Plugin

The Spring Boot Maven plugin includes a run goal that can be used to quickly compile and run your application. 
Applications run in an exploded form, as they do in your IDE. 
The following example shows a typical Maven command to run a Spring Boot application:
 
```bash
$ mvn spring-boot:run
``` 

#### Using Executable Jar

To create an executable war run:

```bash
$ mvn clean package
``` 

To run that application, use the java -jar command, as follows:

```bash
$ java -jar target/blog-0.0.1-SNAPSHOT.war
```

To exit the application, press **ctrl-c**.

##### Helper script

It is possible to run all of the above with helper script:

```bash
$ chmod +x scripts/run_docker.sh
$ scripts/run_docker.sh
```

## Tests

Tests can be run by executing following command from the root of the project:

```bash
$ mvn test
```

## Helper Tools

### HAL REST Browser

Go to the web browser and visit `http://localhost:8090/`

You will need to be authenticated to be able to see this page.

### H2 Database web interface

Go to the web browser and visit `http://localhost:8090/h2-console`

In field **JDBC URL** put 
```
jdbc:h2:mem:blog_simple_db
```

In `/src/main/resources/application.properties` file it is possible to change both
web interface url path, as well as the datasource url.

