FROM alpine:latest
LABEL maintainer "niubiya <dev@niubiya.org>"
WORKDIR /
COPY pikserver ./pikserver
COPY start.sh ./start.sh
RUN chmod +x ./pikserver
RUN chmod +x ./start.sh
CMD ["/bin/sh","./start.sh"]
EXPOSE 8080
