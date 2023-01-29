# Usage

Open a terminal and run the consumer.

```
python receive.py
```

It will loop forever and receive messages until interrupted with `CTRL+C`.

Open another terminal and run the producer.

```
python send.py
```

This publishes one message and exits each time it is run.
