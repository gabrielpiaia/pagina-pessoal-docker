FROM nginx:alpine
RUN rm /etc/nginx/conf.d/default.conf
RUN rm /etc/nginx/nginx.conf
COPY site.conf /etc/nginx/conf.d/
COPY nginx.conf /etc/nginx/
COPY app /usr/share/nginx/html

# Exponha a porta 8080
EXPOSE 8080

# Comando para iniciar o nginx
CMD ["nginx", "-g", "daemon off;"]

