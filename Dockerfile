#Gradle Build
FROM node:19-alpine AS builder
COPY package.json /app/
COPY src /app/src
WORKDIR /app
RUN npm install -g @quasar/cli
RUN npm install
RUN quasar build

#Run
FROM nginx:1.23.3-alpine
COPY --from=builder /app/dist/spa /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
