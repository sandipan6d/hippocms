FROM txdevops/hippocms_base:1.1
MAINTAINER Sandipan

#RUN cd /hippocms/myhippoproject/; mvn clean verify

RUN cd /hippocms/myhippoproject/; mvn install
