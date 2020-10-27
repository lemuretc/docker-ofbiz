FROM ubuntu:xenial
MAINTAINER ASCDC <lemuretc@gmail.com>

RUN DEBIAN_FRONTEND=noninteractive && \
	chmod +x /script/*.sh && \
	apt-get -qq update && \
	apt-get -y -qq dist-upgrade && \
	apt-get -qq install -y locales && \
	locale-gen en_US.UTF-8 && \
	export LANG=en_US.UTF-8
RUN DEBIAN_FRONTEND=noninteractive && apt-get -qq install -y vim screen wget git curl openjdk-8-jdk

ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64

WORKDIR /

#ENTRYPOINT ["entrypoint.sh"]

#ENTRYPOINT ["/usr/bin/env"]
#CMD ["sh"]

ADD run.sh /run.sh
RUN chmod +x /run.sh
USER root
CMD ["/run.sh"]
