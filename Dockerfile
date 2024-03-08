# Development stage
FROM node:21-alpine AS development

WORKDIR /app

COPY package*.json ./
RUN npm install -g pnpm
RUN pnpm install

COPY . .

EXPOSE 3000

CMD ["pnpm", "run", "dev"]

# Build stage
FROM node:21-alpine AS build

WORKDIR /app

COPY package*.json ./
RUN npm install -g pnpm
RUN pnpm install

COPY . .
RUN pnpm run build

# Nginx stage
FROM nginx

# Remove the default Nginx configuration
RUN rm /etc/nginx/conf.d/default.conf

COPY go.sh /go.sh
RUN chmod +x /go.sh

# Copy the custom Nginx configuration
COPY nginx.conf /etc/nginx/templates/nginx.conf.template

# Copy the built frontend files
COPY --from=build /app/dist /usr/share/nginx/html

EXPOSE 80

CMD ["/go.sh"]