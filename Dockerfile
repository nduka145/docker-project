# Use the official CentOS 7 base image
FROM centos:7

# Install required dependencies
RUN yum -y update && \
    yum -y install java-1.8.0-openjdk wget && \
    yum clean all

# Download and install Apache Tomcat
ENV TOMCAT_VERSION 8.5.98
RUN wget -q https://dlcdn.apache.org/tomcat/tomcat-8/v8.5.98/bin/apache-tomcat-8.5.98.tar.gz -O /tmp/tomcat.tar.gz && \
    tar xf /tmp/tomcat.tar.gz -C /opt && \
    mv /opt/apache-tomcat-${TOMCAT_VERSION} /opt/tomcat && \
    rm /tmp/tomcat.tar.gz

# Expose Tomcat ports
EXPOSE 8081

# Start Tomcat
CMD ["/opt/tomcat/bin/catalina.sh", "run"]
