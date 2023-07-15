# Use the official Node.js 14 image as the base image
FROM node:latest

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install the dependencies
RUN npm install

# Copy the server files to the working directory
COPY . .

# Expose the port on which your server is listening
EXPOSE 3000

# Start the server when the container starts
CMD [ "node", "server.js" ]