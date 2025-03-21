# Use a small base image with Python
FROM python:3-alpine3.15

# Install build tools if necessary (optional)
RUN apk add --no-cache build-base

# Set the working directory to /app
WORKDIR /app

# Copy the content from the current directory to the container's /app directory
COPY . /app

# Install dependencies specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Expose the Flask app port
EXPOSE 3000

# Command to run the Flask app
CMD ["python", "./index.py"]