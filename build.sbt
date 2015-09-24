name := "application-center"

version := "1.1.x-SNAPSHOT"

scalaVersion := "2.11.7"

libraryDependencies ++= Seq(
  "org.springframework.boot" % "spring-boot-starter-web" % "1.2.5.RELEASE",
  "org.slf4j" % "slf4j-api" % "1.7.12",
  "ch.qos.logback" % "logback-classic" % "1.1.3",
  "javax.servlet" % "jstl" % "1.2",
  "io.github.rollenholt" % "Pear" % "1.0.4",
  "c3p0" % "c3p0" % "0.9.1.2",
  "mysql" % "mysql-connector-java" % "5.1.34",
  "com.typesafe.slick" %% "slick" % "3.0.3"
)
    