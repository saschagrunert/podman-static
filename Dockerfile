FROM nginx:stable-alpine
WORKDIR /usr/share/nginx/html

COPY podman.tar.xz .
RUN tar xf podman.tar.xz
RUN rm podman.tar.xz

COPY run .
RUN echo "Use the /run script please." > index.html
