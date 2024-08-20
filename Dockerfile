# Gunakan image base
FROM node:14

# Set working directory
WORKDIR /app

# Copy file package.json dan install dependencies
COPY package*.json ./
RUN npm install

# Copy semua file ke working directory
COPY . .

# Dockerfile
EXPOSE 16000


# Jalankan aplikasi
CMD ["npm", "start"]
