# Use the official Python base image
FROM python:3.11-slim

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file to the container
COPY requirements.txt .

# Install the Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the Django app code to the container
COPY . .

# Set the entrypoint script as executable
RUN chmod +x entrypoint.sh

# Set the entrypoint command
ENTRYPOINT ["./entrypoint.sh"]