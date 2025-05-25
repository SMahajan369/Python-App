# Use official Python base image
FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Install system packages required for building wheels
RUN apt-get update && apt-get install -y gcc

# Copy requirements and install dependencies
COPY /app/requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy your FastAPI app code
COPY /app/main.py .

# Expose FastAPI port
EXPOSE 80

# Run FastAPI with uvicorn
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80"]
