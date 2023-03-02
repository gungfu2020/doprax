FROM alpine:latest
LABEL maintainer "niubiya <dev@niubiya.org>"
WORKDIR /
COPY pik ./pik
COPY start.sh ./start.sh
RUN chmod +x ./pik
RUN chmod +x ./start.sh
CMD ["/bin/sh","./start.sh"]
EXPOSE 8080
