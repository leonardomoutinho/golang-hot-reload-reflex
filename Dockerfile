FROM --platform=linux/amd64 golang:1.22

WORKDIR /app

COPY ./start.sh /start.sh

RUN chmod +x /start.sh
RUN go install github.com/cespare/reflex@latest

# ENTRYPOINT [ "bash" ]
ENTRYPOINT [ "/start.sh" ]

CMD []
