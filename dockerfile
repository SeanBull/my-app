FROM node:14.18-alpine as build

WORKDIR /app

COPY package*.json /app/

RUN npm install

COPY ./ /app/

RUN npm run build

FROM nginx:1.20.2-alpine

COPY --from=build /app/build /usr/share/nginx/html
COPY --from=build /app/nginx/nginx.conf /etc/nginx/nginx.conf


EXPOSE 80

ENTRYPOINT [ "nginx", "-g", "daemon off;" ]