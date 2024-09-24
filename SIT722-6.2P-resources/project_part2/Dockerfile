# Use Python slim image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the book_catalog folder contents to the working directory
COPY ./book_catalog /app

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose the application's port
EXPOSE 8000

# Run the application
CMD ["python", "main.py"]