FROM tomcat:9-jre11
ARG WAR_FILE=target/hapi-fhir-jpaserver.war
ARG SLS_RULES=src/main/resources/sens-codes-modified.csv
ARG PPS_RULES=src/main/resources/pps-rules.csv
RUN mkdir -p /data/hapi/lucenefiles && chmod 775 /data/hapi/lucenefiles
COPY ${WAR_FILE} /usr/local/tomcat/webapps/
COPY ${SLS_RULES} /usr/local/tomcat/webapps/ROOT/WEB-INF/sens-codes-modified.csv
COPY ${PPS_RULES} /usr/local/tomcat/webapps/ROOT/WEB-INF/pps-rules.csv

EXPOSE 8080

CMD ["catalina.sh", "run"]