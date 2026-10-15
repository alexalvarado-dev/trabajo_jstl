FROM tomcat:9.0-jdk11

ENV CATALINA_HOME /usr/local/tomcat

RUN rm -rf ${CATALINA_HOME}/webapps/*

COPY index.jsp ${CATALINA_HOME}/webapps/ROOT/
COPY css ${CATALINA_HOME}/webapps/ROOT/css
COPY img ${CATALINA_HOME}/webapps/ROOT/img
COPY js ${CATALINA_HOME}/webapps/ROOT/js
COPY JSTL_2006 ${CATALINA_HOME}/webapps/ROOT/JSTL_2006
COPY JSTL_2024 ${CATALINA_HOME}/webapps/ROOT/JSTL_2024
COPY WEB-INF ${CATALINA_HOME}/webapps/ROOT/WEB-INF

EXPOSE 8080

CMD ["catalina.sh", "run"]