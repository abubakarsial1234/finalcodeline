# Use the Nginx image from AWS Public ECR Gallery to avoid Docker Hub rate limits
FROM public.ecr.aws/nginx/nginx:alpine

# Copy the local 'index.html' file to the Nginx public directory
COPY index.html /usr/share/nginx/html

# Expose port 80 to the outside world
EXPOSE 80

# The command to run when the container starts
CMD ["nginx", "-g", "daemon off;"]

