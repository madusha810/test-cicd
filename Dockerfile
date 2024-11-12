# Use the official Nginx image from Docker Hub
FROM nginx:latest

# Copy your HTML files into the Nginx default directory
COPY index.html /usr/share/nginx/html

# Expose port 80 to serve the website
EXPOSE 80

# Start Nginx when the container launches
CMD ["nginx", "-g", "daemon off;"]
