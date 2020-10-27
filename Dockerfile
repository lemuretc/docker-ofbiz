FROM openjdk:7

WORKDIR /

#ENTRYPOINT ["entrypoint.sh"]

#ENTRYPOINT ["/usr/bin/env"]
#CMD ["sh"]

ADD run.sh /run.sh
RUN chmod +x /*.sh
USER root
CMD ["/run.sh"]
