FROM debian:wheezy

RUN groupadd --system --gid 110 tomcat
RUN useradd --system --gid 110 --uid 110 tomcat

VOLUME /logs

CMD mkdir -p /logs/tomcat && chown tomcat:tomcat /logs/tomcat && /bin/bash
