FROM jenkins/jenkins:alpine
USER root
RUN apk --no-cache add docker
ENV JENKINS_JAVA_OPTS ${JENKINS_JAVA_OPTS} -Dorg.jenkinsci.plugins.durabletask.BourneShellScript.HEARTBEAT_CHECK_INTERVAL=300
USER ${user}
