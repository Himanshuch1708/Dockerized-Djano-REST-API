# Use the official Python base image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the entire project directory to the container
COPY . .

# Set the working directory to the rest_api folder
WORKDIR /app/rest_api

# Expose the port on which the Flask API will run
EXPOSE 5000

# Set the entry point command to run the manage.py file
CMD ["python", "manage.py", "runserver", "--host", "0.0.0.0"]
