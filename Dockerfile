# Use the official Node.js image as the base image
FROM node:alpine
# Set the working directory in the container
WORKDIR /usr/src/app
# Copy the package.json and package-lock.json files to the container
COPY package.json .
# Install the app's dependencies in the container
RUN npm install
# Copy the rest of the app's code to the container
COPY . .
# Start the app
CMD [ "npm", "start" ]
