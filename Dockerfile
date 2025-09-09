# Use an official Nginx runtime as a parent image
FROM nginx:alpine

# Copy the local 'index.html' file to the Nginx public directory
COPY index.html /usr/share/nginx/html

# Expose port 80 to the outside world
EXPOSE 80

# The command to run when the container starts
CMD ["nginx", "-g", "daemon off;"]
