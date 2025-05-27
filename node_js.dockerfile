# Use an official Node.js runtime as a parent image
FROM node:14

# Set the working directory
WORKDIR /usr/src/app

# Copy package.json and install dependencies
COPY package.json .
RUN npm install

# Copy the application code
COPY app.js .

# Expose the application port
EXPOSE 3000

# Run the application
CMD ["node", "app.js"]

