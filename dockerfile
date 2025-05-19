# Use the official lightweight Python image
FROM python:3.10-alpine


# Set the working directory in the container
WORKDIR /app

# Copy the dependencies file
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the source code
COPY . .

# Command to run the app
CMD ["python", "app.py"]
