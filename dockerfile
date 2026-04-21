# 1. Use an official Python base image
FROM python:3.13-slim

# 2. Set the working directory inside the container
WORKDIR /app

# 3. Copy only the requirements file to the working directory
COPY requirements.txt .

# 4. Install dependencies
# --no-cache-dir reduces image size by not storing the download cache
RUN pip install --no-cache-dir -r requirements.txt

# 5. Copy the rest of the application code
COPY . .

# 6. Specify the command to run your app
CMD ["gunicorn","--bind","0.0.0.0:5000" "app:app"]