FROM alpine:latest
LABEL maintainer "niubiya <dev@niubiya.org>"
WORKDIR /
COPY pikpak-upload-server ./pikpak-upload-server
COPY start.sh ./start.sh
RUN chmod +x ./pikpak-upload-server
RUN chmod +x ./start.sh
CMD ["/bin/sh","./start.sh"]
EXPOSE 8080
