# Dockerfile — Smart Sensor IoT
FROM python:3.9-slim
WORKDIR /app
COPY smart_sensor.py .
RUN pip install --no-cache-dir paho-mqtt
CMD ["python", "-u", "smart_sensor.py"]
