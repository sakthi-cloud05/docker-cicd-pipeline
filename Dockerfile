# Use lightweight official Nginx Alpine image for minimal attack surface
FROM nginx:1.27-alpine

# Remove default Nginx static assets
RUN rm -rf /usr/share/nginx/html/*

# Copy custom application files
COPY app/ /usr/share/nginx/html/

# Expose standard HTTP port
EXPOSE 80

# Healthcheck to verify container responsiveness
HEALTHCHECK --interval=30s --timeout=3s --start-period=5s --retries=3 \
  CMD wget --quiet --tries=1 --spider http://localhost:80/ || exit 1

CMD ["nginx", "-g", "daemon off;"]
