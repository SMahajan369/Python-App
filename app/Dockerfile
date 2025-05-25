# Use official Python base image
FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Install system packages required for building wheels
RUN apt-get update && apt-get install -y gcc

# Copy requirements and install dependencies
COPY requirement.txt .
RUN pip install --no-cache-dir -r requirement.txt

# Copy your FastAPI app code
COPY main.py .

# Expose FastAPI port
EXPOSE 8000

# Run FastAPI with uvicorn
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
