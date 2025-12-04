# Use official Nginx image
FROM nginx:latest

# Copy frontend files to nginx html directory
COPY . /usr/share/nginx/html
