# Base image
FROM node:latest

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json files
COPY package*.json ./

# Install dependencies
RUN npm install
RUN npm install -g json-server
# Copy the JSON server data file
COPY db.json .

# Expose the JSON server port (optional if you want to access it from outside the container)
EXPOSE 3000

# Run the JSON server in watch mode
CMD ["json-server"]
