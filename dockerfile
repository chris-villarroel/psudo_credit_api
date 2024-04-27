# Use the official Python 3.10 Alpine image
FROM python:3.10-alpine

# Set working directory in container
WORKDIR /app

# Copy local folder into the container at /app
COPY . /app

RUN apk add --no-cache build-base && \
    pip install Flask

# Expose the port the app will run on
EXPOSE 5000

# Command to run the application using python
CMD ["python", "app.py"]