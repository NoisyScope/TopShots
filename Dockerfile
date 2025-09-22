# Use an official Node.js runtime as a parent image
FROM node:18-alpine

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the port the app runs on (Expo's default is 8081)
EXPOSE 8081

# Command to run the application
CMD [ "npx", "expo", "start", "--no-dev", "--max-workers", "1" ]
