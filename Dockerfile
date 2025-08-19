# Use Python 3.10.18 slim image
FROM python:3.10.18-slim-buster

# Install required system dependencies
RUN apt update -y && apt install -y \
    awscli \
    # git \
    # curl \
    # && rm -rf /var/lib/apt/lists/*

# # Set working directory
# WORKDIR /app

# Copy everything into the container
COPY . /app

# Install Python dependencies
# RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Run the Flask app
CMD ["python", "app.py"]
