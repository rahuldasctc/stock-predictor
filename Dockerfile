# Use Node 16 as the base image (n8n compatible)
FROM node:16

# Set working directory
WORKDIR /usr/src/app

# Install n8n globally
RUN npm install -g n8n

# Copy all files to the container
COPY . .

# Command to start n8n
CMD ["n8n", "start"]