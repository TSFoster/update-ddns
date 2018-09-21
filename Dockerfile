FROM alpine:latest
COPY update-ddns /usr/local/bin/
CMD update-ddns
