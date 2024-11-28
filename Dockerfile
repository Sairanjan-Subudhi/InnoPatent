# Use an official Python runtime as the base image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /Driverless

# Copy the requirements file
COPY req.txt .

# Install Python dependencies
RUN pip install --no-cache-dir -r req.txt

# Copy the rest of the application code
COPY . .

# Expose the port your Flask app runs on (default is 5000)
EXPOSE 5000

# Set the command to run your Flask app
CMD ["python", "Driverless.py"]
