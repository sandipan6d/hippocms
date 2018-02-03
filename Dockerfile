FROM txdevops/hippocms_base:1.0
MAINTAINER Sandipan

RUN cd /hippocms/myhippoproject/
RUN mvn clean verify

