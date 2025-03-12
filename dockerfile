# Use an official Node.js runtime as a parent image
FROM node:16

# Set the working directory in the container
WORKDIR /app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of your application code
COPY . .

# Expose the port your NestJS app runs on
EXPOSE 3000

# Start the NestJS application in development mode
CMD ["npm", "run", "start:dev"]
