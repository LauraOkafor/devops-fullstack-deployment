# Use Node.js as the base image for building the frontend
FROM node:20-alpine 

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy all frontend files
COPY . .

# Expose port 5173
EXPOSE 5173

# Start Nginx server
# CMD ["npm", "-g", "run", "dev","serve", "-s", "build"]
CMD ["npm", "run", "dev"]