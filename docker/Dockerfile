FROM nginx:stable
RUN mkdir /html
COPY default.conf /etc/nginx/conf.d/default.conf
COPY index.html /html/
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
