# Stage 1: Builder
FROM node:18-alpine AS builder

# Set working directory
WORKDIR /app

# Install dependencies separately to leverage Docker cache
COPY package*.json ./
RUN npm ci --only=production

# Copy the rest of the application
COPY . .

# Stage 2: Production image
FROM node:18-alpine

# Create app directory
WORKDIR /app

# Copy only the necessary files from builder
COPY --from=builder /app ./

# Expose port
EXPOSE 3000

# Run app as non-root user for security
RUN addgroup -S appgroup && adduser -S appuser -G appgroup
USER appuser

# Run the application
CMD ["node", "index.js"]
