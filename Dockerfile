# Development stage
FROM node:21-alpine AS development

WORKDIR /app

COPY package.json pnpm-lock.yaml ./
RUN npm install -g pnpm
# RUN pnpm install

COPY . .

EXPOSE 3000

CMD ["pnpm", "run", "dev"]

# # Production stage
# FROM node:21-alpine AS build

# WORKDIR /app

# COPY package.json pnpm-lock.yaml ./
# RUN npm install -g pnpm
# RUN pnpm install

# COPY . .

# RUN pnpm run build
