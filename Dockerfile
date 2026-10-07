# Minimal Docker image for biom-format using Alpine base
FROM alpine:latest

# install biom-format
RUN apk update && \
    apk add --no-cache bash gcc musl-dev py3-pip python3 python3-dev && \
    pip install --no-cache-dir --break-system-packages biom-format
