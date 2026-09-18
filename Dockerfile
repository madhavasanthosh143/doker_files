FROM alpine:latest

ENV GREETING="Hello from Docker"

CMD ["sh", "-c", "echo $GREETING"]
