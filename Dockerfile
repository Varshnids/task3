# Use the official Nginx image from the Docker Hub
FROM nginx:latest

# Copy the HTML file into the Nginx container
COPY index.html /usr/share/nginx/html/

# Expose port 80 to access the web server
EXPOSE 80

# Start the Nginx server
CMD ["nginx", "-g", "daemon off;"]
