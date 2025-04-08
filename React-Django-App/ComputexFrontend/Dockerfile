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

# Build the application
# RUN npm run build

# Production stage using Nginx to serve static files
# FROM nginx:alpine

# Copy built assets from the build stage
# COPY --from=build /app/dist /usr/share/nginx/html

# # Copy custom Nginx configuration if needed
# COPY nginx.conf /etc/nginx/conf.d/default.conf

# Expose port 5173
EXPOSE 5173

# Start Nginx server
CMD ["npm", "-g", "run", "dev","serve", "-s", "build"]