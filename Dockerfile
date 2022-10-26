FROM adoptopenjdk/openjdk11:jre-11.0.11_9-alpine

RUN apk add --no-cache curl git openssh

COPY ./start_agent.sh /var/jenkins/start_agent.sh
RUN chmod +x /var/jenkins/start_agent.sh

CMD ["/var/jenkins/start_agent.sh"]
