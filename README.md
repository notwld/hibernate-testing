# Hibernate-Testing
A simple Jakarta EE app built with Hibernate as an ORM.

# Getting Started

Before running this application, make sure you have the following installed:

- Java Development Kit (JDK) 11
- Apache Maven
- MySQL Database
- GlassFish 6.2.5 (Application Server)

## Clone the repository: 
```shell
git clone https://github.com/notwld/hibernate-testing
 ```
 
## Dependencies:
```shell
<dependency>
      <groupId>org.hibernate.orm</groupId>
      <artifactId>hibernate-core</artifactId>
      <version>6.0.2.Final</version>
</dependency>
```
```shell
<dependency>
      <groupId>com.mysql</groupId>
      <artifactId>mysql-connector-j</artifactId>
      <version>8.0.33</version>
</dependency>
```
```shell
<dependency>
    <groupId>jstl</groupId>
    <artifactId>jstl</artifactId>
    <version>1.2</version>
</dependency>
```

## Configure the database:

Create a MySQL database with the name student.
Update the database connection details in the src/main/resources/hibernate.cfg.xml file.
 
## Access the application:

Run you application and it will automatically open http://localhost:8080 to access the Student App.
