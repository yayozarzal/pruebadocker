FROM nginx:stable-alpine
#copiar archivo index.html y styles al contenedor
COPY ./index.html /usr/share/nginx/html/index.html
COPY ./styles.css /usr/share/nginx/html/styles.css

#exponer el puerto 80
EXPOSE 80

#comando para ejecutar nginx en primer plano
CMD ["nginx", "-g", "daemon off;"]