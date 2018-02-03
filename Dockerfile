FROM txdevops/hippocms_base:1.1
MAINTAINER Sandipan

RUN cd /hippocms/myhippoproject/; mvn install
# Below step is added to reduce container runtime dependency
RUN cd /hippocms/myhippoproject/; mvn install org.codehaus.cargo:cargo-maven2-plugin:install

ENV HIPPO_PROJECT_DIR "/hippocms/myhippoproject/"
EXPOSE 8080
COPY start_cmd.sh start_cmd.sh
COPY hippo_wrapper.sh hippo_wrapper.sh
RUN chmod 755 start_cmd.sh hippo_wrapper.sh
CMD ./hippo_wrapper.sh
