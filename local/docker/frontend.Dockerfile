FROM node:20
WORKDIR /app
COPY frontend/package.json frontend/package-lock.json ./
RUN npm install
COPY . .
EXPOSE 3000
CMD ["npm", "run", "dev"]