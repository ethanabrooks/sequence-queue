FROM redis:alpine

COPY . .
ENTRYPOINT ["/data/entrypoint.sh"]
