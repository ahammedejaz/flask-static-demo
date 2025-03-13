FROM python:3.9-slim

# Prevent Python from writing .pyc files to disc
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set working directory in the container
WORKDIR /app

# Copy and install dependencies
COPY ../app/requirements.txt /app/
RUN pip install --upgrade pip && pip install -r requirements.txt

# Copy application code
COPY ../app /app

# Expose port 80 and run the application
EXPOSE 80
CMD ["python", "app.py"]