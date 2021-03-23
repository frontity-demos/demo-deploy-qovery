FROM node:12-alpine
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . /app
RUN npm install --only=production
RUN npx frontity build
EXPOSE 8080
CMD ["npx", "frontity", "serve", "--port", "8080"]