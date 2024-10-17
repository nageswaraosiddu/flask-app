# Use a lightweight Python image
FROM python:3.9-slim



# Set the working directory inside the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install Python dependencies
RUN pip install -r requirements.txt

# Expose the app's port
EXPOSE 5000

# Run the Flask app
CMD ["python", "app.py"]

