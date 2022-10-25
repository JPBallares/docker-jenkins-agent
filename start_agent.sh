#!/bin/sh
SECRET=eb67cb3478d21f605a4381336795efcea6c6bb56053227f3210c51500874b8bb
AGENT_JAR_URL=http://ec2-13-250-20-153.ap-southeast-1.compute.amazonaws.com/jnlpJars/agent.jar
CONTROLLER_URL=http://ec2-13-250-20-153.ap-southeast-1.compute.amazonaws.com/computer/main%2Dagent/jenkins-agent.jnlp
WORK_DIR=/var/jenkins/agent


curl -sO $AGENT_JAR_URL
java -jar agent.jar -jnlpUrl $CONTROLLER_URL -secret $SECRET -workDir "$WORK_DIR"
