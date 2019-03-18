FROM rabbitmq:alpine

ENV RABBIT_USER=taiga \
	RABBIT_PASSWORD=qwerty \
	RABBIT_VHOST=taiga \
	STARTUP_TIMEOUT=15s

COPY start.sh /

RUN chmod +x /start.sh || true

ENTRYPOINT ["/start.sh"]