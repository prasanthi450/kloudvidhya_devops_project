# Use the official NGINX image
FROM nginx:alpine

# Copy custom index.html into nginx web root
COPY index.html /usr/share/nginx/html/index.html

