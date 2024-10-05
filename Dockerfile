# Usar a imagem oficial do Node.js
FROM node:20

# Definir o diretório de trabalho
WORKDIR /app

# Copiar package.json e package-lock.json
COPY package*.json ./

# Instalar dependências
RUN npm install

# Copiar todos os arquivos da aplicação
COPY . .

# Construir a aplicação
RUN npm run build

# Expor a porta da aplicação
EXPOSE 3000

# Comando para iniciar a aplicação
CMD ["npm", "start"]
