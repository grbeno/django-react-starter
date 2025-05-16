# Python (Django) backend
FROM python:3.11-slim-bullseye

WORKDIR /app

# Install Python dependencies
COPY ./requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy backend code
COPY . /app/

# Frontend (React)

# Install Node.js (example for Node 20.x)
RUN apt-get update && apt-get install -y curl && \
    curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && \
    apt-get install -y nodejs && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

WORKDIR /app/frontend

# Copy frontend files and build React app
COPY ./frontend/package*.json ./
RUN npm install
COPY ./frontend ./
RUN npm run build

WORKDIR /app