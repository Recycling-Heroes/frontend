#Gradle Build
FROM node:19-alpine AS builder
WORKDIR /app
COPY package.json ./
RUN yarn global add @quasar/cli
COPY . .
RUN yarn
RUN quasar build

#Run
FROM nginx:1.23.3-alpine
COPY --from=builder /app/dist/spa /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
