# Use Selenium Chrome image (Chrome + Driver preinstalled)
FROM selenium/standalone-chrome:latest

# Switch to root to install Python packages
USER root

# Install Python and pip
RUN apt-get update && apt-get install -y python3 python3-pip

# Set working directory
WORKDIR /app

# Copy files
COPY requirements.txt .
COPY app.py .

# Install Python dependencies
RUN pip3 install --no-cache-dir -r requirements.txt

# Switch back to selenium user
USER seluser

# Run the script
CMD ["python3", "app.py"]
