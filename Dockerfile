# Python (Django) backend
FROM python:3.11-slim-bullseye

WORKDIR /app

# Install Python dependencies
COPY ./requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy backend code
COPY . /app/