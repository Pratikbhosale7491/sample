# Use official Nginx image
FROM nginx:1.25-alpine

# Remove default Nginx static files
RUN rm -rf /usr/share/nginx/html/*

# Copy frontend files (from the /frontend folder)
COPY frontend/ /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
