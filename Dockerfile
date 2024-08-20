# Gunakan base image Node.js yang ringan
FROM node:lts-alpine

# Set working directory di dalam container
WORKDIR /app

# Copy package.json dan package-lock.json ke dalam container
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy semua file dan folder ke dalam container
COPY . .

# Build aplikasi untuk produksi
RUN npm run build

# Gunakan server HTTP sederhana untuk menyajikan aplikasi
RUN npm install -g serve

# Expose port 5000
EXPOSE 5000

# Command untuk menjalankan aplikasi
CMD ["serve", "-s", "dist", "-l", "5000"]
