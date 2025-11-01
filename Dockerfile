# Stage 1: Build the app
FROM node:24-alpine AS builder
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .

# Stage 2: Create the final, small image
FROM node:18-alpine
WORKDIR /app
COPY --from=builder /app .

# Set the port
ENV PORT=3000
EXPOSE 3000

# Run the app
CMD [ "npm", "start" ]