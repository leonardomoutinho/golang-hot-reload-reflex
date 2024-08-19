FROM golang:1.22

WORKDIR /app

COPY ./start.sh /start.sh

RUN chmod +x /start.sh
RUN go install github.com/cespare/reflex@latest

# ENTRYPOINT [ "bash" ]
ENTRYPOINT [ "/start.sh" ]

# ENTRYPOINT ["reflex", "-r", "'(\.go$|go\.mod|\.env$)'", "--decoration=none", "-s", "go", "run"]

# CMD ["reflex", "-r", "'(\.go$|go\.mod|\.env$)'", "--decoration=none", "-s", "go", "run"]

CMD []
# ENTRYPOINT ["reflex -r (\.go$|go\.mod|\.env$) --decoration=none -s go run"]
