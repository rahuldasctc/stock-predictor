# Use Node 18 as the base image (n8n compatible)
FROM node:18

# Set working directory
WORKDIR /usr/src/app

# Install n8n globally
RUN npm install -g n8n

# Copy all files to the container
COPY . .

# Expose the default n8n port (Render will override with PORT env var)
EXPOSE 5678

# Command to start n8n
CMD ["n8n", "start"]