FROM txdevops/hippocms_base:1.0
MAINTAINER Sandipan

#RUN cd /hippocms/myhippoproject/; mvn clean verify

RUN cd /hippocms/myhippoproject/; mvn install
