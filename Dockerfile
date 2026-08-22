# KAFD ONE landing experience — static site on Cloud Run.
FROM nginx:1.27-alpine
COPY . /usr/share/nginx/html
RUN rm -f /usr/share/nginx/html/Dockerfile /usr/share/nginx/html/nginx.default.conf.template
COPY nginx.default.conf.template /etc/nginx/templates/default.conf.template
ENV PORT=8080
EXPOSE 8080
