# Use Python as the base image
FROM python:3.10-slim

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

WORKDIR /app

# Install system dependencies
 RUN apt-get update && apt-get install -y postgresql-client


# Install dependencies
COPY requirements.txt .
RUN pip install --upgrade pip
RUN pip install --upgrade pip wheel setuptools
RUN pip install -r requirements.txt
# RUN pip install wheel
# RUN pip install --no-cache-dir -r requirements.txt

RUN pip install psycopg2-binary
RUN pip install psycopg

# Install PostgreSQL adapter
# RUN pip install psycopg2-binary

# Copy project files
COPY . .

# Expose port Django runs on
EXPOSE 8000

# Run with Gunicorn
# CMD ["sh", "-c","python", "manage.py", "runserver", "0.0.0.0:8000"]
CMD ["sh", "-c", "python manage.py migrate && python manage.py runserver 0.0.0.0:8000"]