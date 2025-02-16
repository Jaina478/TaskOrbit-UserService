FROM python:3.9

# Set the working directory inside the container
WORKDIR /app


# Install system dependencies
RUN apt-get update && apt-get install -y default-mysql-client


# Copy the project files
COPY . .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Run Django server
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
