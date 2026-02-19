FROM python:3.8-slim-buster
WORKDIR /app
COPY . /app

# RUN apt update -y && apt install awscli -y
RUN pip install --no-cache-dir awscli

# RUN apt-get update && apt-get install ffmpeg libsm6 libxext6 unzip -y && pip install -r requirements.txt
RUN pip install --upgrade pip
# RUN pip install ffmpeg libsm6 libxext6 unzip -y
RUN pip install --no-cache-dir -r requirements.txt
CMD ["python3", "app.py"]