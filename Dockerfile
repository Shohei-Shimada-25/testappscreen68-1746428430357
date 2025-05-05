FROM nginx:alpine
ENV PORT 8080
RUN sed -E -i 's/listen[[:space:]]+[0-9]+;/listen $PORT;/' /etc/nginx/conf.d/default.conf
EXPOSE 8080
COPY index.html /usr/share/nginx/html/index.html
COPY styles.css  /usr/share/nginx/html/styles.css
COPY script.js   /usr/share/nginx/html/script.js
CMD ["nginx", "-g", "daemon off;"]