# Step 1: Use the official Node.js image as a base
FROM node:16

# Step 2: Set the working directory in the container
WORKDIR /app

# Step 3: Copy the package.json and install dependencies
COPY package.json /app
RUN npm install

# Step 4: Copy the rest of the application code into the container
COPY . /app

# Step 5: Expose the port the app will run on
EXPOSE 3000

# Step 6: Define the command to run the app
CMD ["npm", "start"]
