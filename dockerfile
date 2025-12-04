# Use official Nginx image (fixed version)
FROM nginx:1.25-alpine

# Remove default Nginx static files
RUN rm -rf /usr/share/nginx/html/*

# Copy your frontend files to Nginx directory
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
