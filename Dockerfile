#stage 1
FROM node:14.19 as build-stage
WORKDIR /app
COPY package*.json /app/
RUN npm install

FROM build-stage as build-app-stage
COPY . /app/
RUN npm run build -- --output-path=./dist/out

#stage 2
FROM nginx:alpine
COPY --from=build-app-stage /app/dist/out/ /usr/share/nginx/html
COPY --from=build-app-stage /app/nginx-custom.conf /etc/nginx/conf.d/default.conf
