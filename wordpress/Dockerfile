FROM nginx:latest
WORKDIR /app
COPY ./wordpress/* /usr/share/nginx/html/
EXPOSE 80
CMD [ "nginx","-g","daemon on;" ]
