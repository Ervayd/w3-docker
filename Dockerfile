# Gunakan image Node.js sebagai dasar
FROM node:20

# Set working directory
WORKDIR /usr/src/app

# Copy package.json dan package-lock.json untuk menginstall dependencies
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy seluruh kode proyek ke dalam container
COPY . .

# Expose port yang digunakan oleh Vite (defaultnya adalah 5173)
EXPOSE 5173

# Jalankan aplikasi dengan Vite
CMD ["npm", "run", "dev"]
