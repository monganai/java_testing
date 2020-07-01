FROM tomcat:9.0.36


ADD regression.war /usr/local/tomcat/webapps/
RUN wget -O dd-java-agent.jar 'https://repository.sonatype.org/service/local/artifact/maven/redirect?r=central-proxy&g=com.datadoghq&a=dd-java-agent&v=LATEST'

EXPOSE 8080

CMD ["catalina.sh", "run"]
