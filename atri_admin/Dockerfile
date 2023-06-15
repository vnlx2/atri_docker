# Use the official Nginx base image
FROM nginx:latest

# Install Git and Node.js
RUN apt-get update && apt-get install -y git && apt-get install -y curl && \
    curl -sL https://deb.nodesource.com/setup_18.x | bash - && \
    apt-get install -y nodejs

# Set the working directory to /app
WORKDIR /app

# Clone the Node.js project repository
RUN git clone https://github.com/vnlx2/atri_web_panel.git

# Change directory to the cloned repository
WORKDIR /app/atri_web_panel

# Install project dependencies
RUN npm install --verbose

# Build the project
RUN npm run build --verbose

# Copy the Nginx configuration file
COPY nginx.conf /etc/nginx/nginx.conf
