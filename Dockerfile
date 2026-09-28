FROM caddy:2-alpine
COPY index.html /srv/index.html
COPY music /srv/music
# Railway passes the port in $PORT
CMD caddy file-server --root /srv --listen :${PORT:-8080}
