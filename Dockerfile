FROM nginx:alpine

COPY . /data

RUN rm -rf /usr/share/nginx/html \
    && ln -sf /data /usr/share/nginx/html

RUN sed -i -e '/location.*\/.*{/a autoindex on\;' /etc/nginx/conf.d/default.conf
