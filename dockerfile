FROM node:18.16.0-alpine

# Set the working directory to /app
WORKDIR /app

# Clone the Git repository
RUN git clone https://github.com/GargiGopi/Angular-Docker.git

# Set the working directory to the cloned repo
WORKDIR /app/Angular-Docker

# Install dependencies
RUN npm install

# Build the app
RUN npm run build

# Copy the built files to the working directory
COPY ./dist /app

# Expose port 80 for the app
EXPOSE 80


# Start the app when the container launches
CMD [ "node", "server.js" ]
