FROM gradle:alpine
ADD ./project project
USER root
RUN chown -R gradle:gradle project
USER gradle
WORKDIR project
ENTRYPOINT gradle
CMD ["gradle", "bootRun"]
