# Gunakan image base
FROM node:14

# Set working directory
WORKDIR /app

# Copy file package.json dan install dependencies
COPY package*.json ./
RUN npm install

# Copy semua file ke working directory
COPY . .

# Expose port 3000
EXPOSE 3000

# Jalankan aplikasi
CMD ["npm", "start"]
