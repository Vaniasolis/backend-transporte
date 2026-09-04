FROM node:18-alpine
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
# 🌟 CORRECCIÓN: Cambiamos el puerto para que coincida con tu captura de Railway
EXPOSE 8080
CMD ["node", "index.js"]
