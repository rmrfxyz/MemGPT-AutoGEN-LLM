# Use an official Python runtime as a base image
FROM python:3.11-buster

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt .
RUN pip install -r requirements.txt

RUN touch README.md

# Define the command to run the AutoGen instance
CMD ["python", "main.py"]