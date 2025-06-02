# 1. Pick an official Node base image
FROM node:18-alpine

# 2. Set the working directory inside the container
WORKDIR /app

# 3. Copy package.json & package-lock.json (if you have it) and install deps
COPY package*.json ./
RUN npm install

# 4. Copy all of the app’s source code into the container
COPY . .

# 5. Expose port 8080 (the same PORT your app listens on)
EXPOSE 8080

# 6. Define the default command to run your app
CMD ["npm", "start"]
