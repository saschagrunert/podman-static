FROM nginx:stable-alpine
WORKDIR /usr/share/nginx/html
COPY podman.tar.xz .
RUN tar xf podman.tar.xz
RUN rm podman.tar.xz
