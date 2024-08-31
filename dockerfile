# Use the official Node.js 20 image as a base
FROM node:20

# Set the working directory inside the container
WORKDIR ./

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the port your app will run on
EXPOSE 3000

# Command to run your app
CMD ["node", "index.js"]
