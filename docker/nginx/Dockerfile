FROM nginx
WORKDIR /var/www
COPY docker/nginx/conf.d/site.conf.template /etc/nginx/conf.d/site.conf.template
COPY docker-entrypoint.sh /
ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["nginx", "-g", "daemon off;"]