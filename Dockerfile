# Use official Node.js image
FROM node:18

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json first
COPY package*.json ./

# Install dependencies
RUN npm install --production

# Copy rest of the code
COPY . .

# Expose a port (Render requires this, even if bot doesn't use HTTP)
EXPOSE 10000

# Run your bot
CMD ["node", "index.js"]
