FROM nginx  
COPY web1.html /usr/share/nginx/html/index.html
COPY dog.jpeg /usr/share/nginx/html
CMD [ "nginx", "-g" , "daemon off;" ]
EXPOSE 8080
