FROM node:18
WORKDIR /app
COPY package*.json ./
RUN npm install react-scripts@latest
COPY . .
RUN npm run build
RUN npm install -g serve
EXPOSE 3000
CMD ["serve", "-s", "build"]
