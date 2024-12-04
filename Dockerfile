# Usa una imagen base de Node.js 22
FROM node:22

# Establece el directorio de trabajo en el contenedor
WORKDIR /app

# Copia el archivo package.json y package-lock.json (o yarn.lock) al contenedor
COPY package*.json ./

# Instala las dependencias del proyecto
RUN npm install

# Copia el resto del código fuente del proyecto al contenedor
COPY . .

# Construye la aplicación Next.js
RUN npm run build

# Expón el puerto 3000 en el contenedor
EXPOSE 3000

# Define el comando para iniciar el servidor de Next.js
CMD ["npm", "start"]
