# Use Node.js official base image
FROM node:20

# Add metadata
LABEL maintainer="bradpage93"
LABEL description="Hello World Express App"
LABEL cohort="2025-01"
LABEL animal="Penguin"  

# Set working directory
WORKDIR /app

# Copy only what's needed
COPY package*.json ./
RUN npm install

# Copy the rest of the app
COPY . .

# Expose the port the app listens on
EXPOSE 8080/tcp

# Start the server
CMD ["node", "index.js"]
