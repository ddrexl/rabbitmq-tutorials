#!/usr/bin/env python
import pika

connection = pika.BlockingConnection(pika.ConnectionParameters("localhost"))
channel = connection.channel()

channel.queue_declare(queue="hello")

channel.basic_publish(
    exchange="",  # default exchange
    routing_key="hello",  # exact queue name
    body="Hello World!",
)
print("Sent 'Hello World!'")

connection.close()
