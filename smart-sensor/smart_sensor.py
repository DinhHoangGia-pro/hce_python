#!/usr/bin/env python3
# smart_sensor.py - Mô phỏng IoT Sensor gửi dữ liệu qua MQTT
 
import time
import random
import json
from datetime import datetime
import paho.mqtt.client as mqtt
 
# --- Cấu hình ---
BROKER      = "172.17.0.1"   # IP của MQTT Broker
PORT        = 1883
TOPIC       = "iot/sensor/data"   # Topic publish dữ liệu
INTERVAL    = 2                  # Gửi mỗi 2 giây
 
# --- Callback khi kết nối thành công ---
def on_connect(client, userdata, flags, rc):
    if rc == 0:
        print("[+] Kết nối MQTT thành công!")
    else:
        print(f"[-] Lỗi kết nối: {rc}")
 
# --- Khởi tạo MQTT client ---
client = mqtt.Client(client_id=f"sensor_{random.randint(1,99)}")
client.on_connect = on_connect

# FIX:
# tự reconnect khi Codespace/network bị chập chờn
client.reconnect_delay_set(min_delay=1, max_delay=10)

client.connect(BROKER, PORT, keepalive=60)

client.loop_start()  # Chạy network loop trong thread riêng
 
# --- Vòng lặp gửi dữ liệu ---
device_id = f"sensor_{random.randint(1,5)}"

while True:

    data = {
        "device_id"  : device_id,
        "temperature": random.randint(20, 35),    # °C
        "humidity"   : random.randint(40, 80),    # %
        "light"      : random.randint(100, 1000), # lux
        "time"       : datetime.now().strftime("%H:%M:%S")
    }

    payload = json.dumps(data)

    # CODE CŨ:
    # result = client.publish(TOPIC, payload, qos=1)

    # FIX:
    # thêm retain=True để dashboard mới mở
    # vẫn thấy dữ liệu sensor gần nhất
    result = client.publish(
        TOPIC,
        payload,
        qos=1,
        retain=True
    )

    # FIX:
    # check publish thành công hay thất bại
    if result.rc == mqtt.MQTT_ERR_SUCCESS:
        print(f"[SEND] {data}")
    else:
        print("[ERROR] Publish thất bại")

    time.sleep(INTERVAL)

