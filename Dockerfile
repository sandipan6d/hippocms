FROM txdevops/hippocms_base:1.1
MAINTAINER Sandipan

RUN cd /hippocms/myhippoproject/; mvn install
# Below step is added to reduce container runtime dependency
RUN cd /hippocms/myhippoproject/; mvn install org.codehaus.cargo:cargo-maven2-plugin:install
