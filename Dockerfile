FROM txdevops/hippocms_base:1.0
MAITAINER Sandipan

RUN cd /cd hippocms/myhippoproject/
RUN mvn clean verify

