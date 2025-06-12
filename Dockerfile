# Base image
FROM node:18-alpine

# Set working directory
WORKDIR /oso_olubunmi_site

# Install app dependencies
COPY package.json ./
#COPY package-lock.json ./
RUN npm install

# Copy source files
COPY . .

# Start the dev server
CMD ["npm", "run", "dev"]
