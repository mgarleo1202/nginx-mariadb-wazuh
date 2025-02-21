FROM nginx:latest AS nginx
# Configuración de Nginx
#COPY nginx.conf /etc/nginx/nginx.conf

FROM mariadb:latest AS mariadb
# Configuración de MariaDB
ENV MYSQL_ROOT_PASSWORD=password
ENV MYSQL_DATABASE=dbexample

FROM wazuh/wazuh:3.13.6_7.9.2 AS wazuh
# Configuración de Wazuh (opcional)
