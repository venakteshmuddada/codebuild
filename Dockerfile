# Use a basic Python image as a placeholder
FROM python:3.8-slim

# Set the working directory in the container
WORKDIR /app

# Copy any files from your local project into the container
COPY . /app

# Install any dependencies (you can change this to match your app's needs)
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port the app will run on (change if necessary)
EXPOSE 5000

# Default command to run your app
CMD ["python", "app.py"]
