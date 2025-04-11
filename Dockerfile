# Use the official Python image
FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Copy requirements and install
COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy rest of app
COPY . .

# Expose port Flask runs on
EXPOSE 5000

# Run the app
CMD ["python", "app.py"]
