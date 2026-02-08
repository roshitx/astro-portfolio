---
title: 'Dockerizing Node.js Applications'
description: 'A complete guide to containerizing your Node.js apps with Docker and Docker Compose.'
date: 2026-01-15
tags: ['docker', 'nodejs', 'devops', 'containerization']
category: 'DevOps'
author: 'Roshit'
readTime: '6 min read'
---

Containerizing your Node.js applications with Docker provides consistency across development, testing, and production environments. Let's walk through the process.

## Creating a Dockerfile

Start with a multi-stage Dockerfile for optimal image size:

```dockerfile
# Stage 1: Build
FROM node:20-alpine AS builder
WORKDIR /app
COPY package*.json ./
RUN npm ci --only=production
COPY . .
RUN npm run build

# Stage 2: Production
FROM node:20-alpine AS production
WORKDIR /app
ENV NODE_ENV=production
COPY --from=builder /app/node_modules ./node_modules
COPY --from=builder /app/dist ./dist
COPY --from=builder /app/package.json ./
EXPOSE 3000
CMD ["node", "dist/index.js"]
```

## Optimizing Your Dockerfile

### 1. Use Specific Base Images

```dockerfile
# Bad - Latest tag can change
FROM node:latest

# Good - Specific version
FROM node:20-alpine
```

### 2. Leverage Build Cache

```dockerfile
# Install dependencies first (changes less frequently)
COPY package*.json ./
RUN npm ci

# Then copy source code
COPY . .
```

### 3. Minimize Image Size

```dockerfile
# Use Alpine Linux for smaller images
FROM node:20-alpine

# Clean up after installations
RUN npm install && npm cache clean --force
```

## Docker Compose for Development

Use Docker Compose to manage multi-container applications:

```yaml
version: '3.8'

services:
  app:
    build: .
    ports:
      - "3000:3000"
    environment:
      - NODE_ENV=development
      - DATABASE_URL=postgres://user:pass@db:5432/myapp
    volumes:
      - .:/app
      - /app/node_modules
    depends_on:
      - db
      - redis

  db:
    image: postgres:15-alpine
    environment:
      - POSTGRES_USER=user
      - POSTGRES_PASSWORD=pass
      - POSTGRES_DB=myapp
    volumes:
      - postgres_data:/var/lib/postgresql/data

  redis:
    image: redis:7-alpine
    ports:
      - "6379:6379"

volumes:
  postgres_data:
```

## .dockerignore

Create a `.dockerignore` file to exclude unnecessary files:

```
node_modules
npm-debug.log
.git
.gitignore
README.md
.env
.DS_Store
coverage
.vscode
```

## Development Workflow

### 1. Build and Run

```bash
# Build the image
docker build -t myapp:latest .

# Run the container
docker run -p 3000:3000 myapp:latest

# Or use Docker Compose
docker-compose up --build
```

### 2. Viewing Logs

```bash
# View container logs
docker logs <container-id>

# Follow logs in real-time
docker logs -f <container-id>

# View Docker Compose logs
docker-compose logs -f app
```

### 3. Executing Commands

```bash
# Open a shell in the container
docker exec -it <container-id> sh

# Run a command
docker exec <container-id> npm test
```

## Production Considerations

### 1. Security

- Don't run as root user
- Use non-root user in Dockerfile
- Scan images for vulnerabilities
- Keep base images updated

```dockerfile
RUN addgroup -g 1001 -S nodejs
RUN adduser -S nextjs -u 1001
USER nextjs
```

### 2. Health Checks

```dockerfile
HEALTHCHECK --interval=30s --timeout=3s --start-period=5s --retries=3 \
  CMD node healthcheck.js || exit 1
```

### 3. Resource Limits

```yaml
services:
  app:
    deploy:
      resources:
        limits:
          cpus: '0.50'
          memory: 512M
        reservations:
          cpus: '0.25'
          memory: 256M
```

## Conclusion

Dockerizing your Node.js applications provides consistency, portability, and easier deployment. Following these best practices will help you create efficient, secure, and maintainable containers for your applications.
