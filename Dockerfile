# Step 1: Use an official lightweight Nginx image
FROM nginx:alpine

# Step 2: Copy your index.html file into the default Nginx public directory
COPY index.html /usr/share/nginx/html/index.html

# Step 3: Expose port 80 so the web server can receive traffic
EXPOSE 80

# Step 4: Run Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
