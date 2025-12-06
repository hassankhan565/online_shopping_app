FROM node:18

# Set working directory
WORKDIR /app

# Copy package files first (better caching)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy rest of the project
COPY . .

# Expose Vite default port
EXPOSE 5173

# Start the dev server
CMD ["npm", "run", "dev", "--", "--host"]

