FROM debian:11

RUN apt-get update && apt-get install -y --no-install-recommends \
    curl python3 \
    && rm -rf /var/lib/apt/lists/*

EXPOSE 3000

# Простой health check
CMD ["python3", "-m", "http.server", "3000"]
