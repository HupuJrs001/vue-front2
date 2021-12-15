FROM nginx:latest
LABEL name="vue-front"
LABEL version="1.0"
COPY ./dist /home/nginx/html
EXPOSE 80
