# Use a imagem oficial do nginx do Docker Hub
FROM nginx:alpine

# Remova o arquivo de configuração padrão do nginx
RUN rm /etc/nginx/conf.d/default.conf


# Copie seu próprio arquivo de configuração nginx
COPY nginx.conf /etc/nginx/conf.d/

# Copie o conteúdo do seu diretório atual para o diretório de conteúdo do nginx
COPY . /usr/share/nginx/html

# Exponha a porta 8080
EXPOSE 8080

# Comando para iniciar o nginx
CMD ["nginx", "-g", "daemon off;"]

