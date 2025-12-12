FROM python:3.11-slim

ENV DEBIAN_FRONTEND=noninteractive \
    PYTHONUNBUFFERED=1 \
    JUPYTER_DIR=/workspace \
    JUPYTER_PORT=8888

RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential git curl ca-certificates && \
    pip install --no-cache-dir jupyterlab && \
    rm -rf /var/lib/apt/lists/*

RUN useradd -m -d ${JUPYTER_DIR} appuser
WORKDIR ${JUPYTER_DIR}

COPY jupyter_server_config.py /etc/jupyter/jupyter_server_config.py
COPY start.sh /start.sh
RUN chmod +x /start.sh && chown -R appuser:appuser ${JUPYTER_DIR}

USER appuser
EXPOSE 8888

CMD ["/start.sh"]
