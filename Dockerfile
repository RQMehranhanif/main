# Use the official Node.js image as the base image
FROM node:12

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the package.json and package-lock.json files to the container
COPY package*.json ./

# Install the app's dependencies in the container
RUN npm install

# Copy the rest of the app's code to the container
COPY . .

# Build the React app in the container
RUN npm run build

# Expose the port the app will run on
EXPOSE 8080

# Start the app
CMD [ "npm", "start" ]
