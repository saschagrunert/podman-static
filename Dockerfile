FROM nginx:stable-alpine
WORKDIR /usr/share/nginx/html

COPY assets.tar.xz .
RUN tar xf assets.tar.xz
RUN rm assets.tar.xz

COPY run .
RUN echo "Use the /run script please." > index.html
