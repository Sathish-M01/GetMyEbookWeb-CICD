# Use the official Python image as the base
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the current directory (your project) into the container's /app directory
COPY . /app

# Install dependencies from requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Set environment variables for Flask
ENV FLASK_APP=cps.py
ENV FLASK_ENV=production

# Expose the Flask app's port (assuming it's 5000)
EXPOSE 5000

# Run the app (entry point)
CMD ["python", "cps.py"]




