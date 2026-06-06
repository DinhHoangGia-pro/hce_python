#!/usr/bin/env python3
# led_device.py - Mô phỏng thiết bị Actuator điều khiển LED
 
import paho.mqtt.client as mqtt
from datetime import datetime
 
BROKER   = "127.0.0.1"
TOPIC    = "home/led"
led_state = "OFF"  # Trạng thái ban đầu
 
def on_message(client, userdata, msg):
    global led_state
    cmd = msg.payload.decode().strip().upper()
    ts  = datetime.now().strftime("%H:%M:%S")

    if cmd == "ON":
        led_state = "ON"
        print(f"[{ts}] 💡 LED BẬT — nhận lệnh ON")

        # FIX:
        # publish trạng thái ON về dashboard
        # vì Codespace thường không auto refresh UI
        client.publish("home/led/status", "ON")

    elif cmd == "OFF":
        led_state = "OFF"
        print(f"[{ts}] ⚫ LED TẮT — nhận lệnh OFF")

        # FIX:
        # publish trạng thái OFF về dashboard
        client.publish("home/led/status", "OFF")

    else:
        print(f"[{ts}] ❓ Lệnh không hợp lệ: {cmd}")
 
def on_connect(client, userdata, flags, rc):
    print(f"[+] LED Device kết nối broker — rc={rc}")
    client.subscribe(TOPIC, qos=1)
    print(f"[+] Đang lắng nghe topic: {TOPIC}")
 
client = mqtt.Client(client_id="led_actuator")
client.on_connect = on_connect
client.on_message = on_message
client.connect(BROKER, 1883, keepalive=60)
client.loop_forever()  # Blocking — chờ tin nhắn vô hạn

