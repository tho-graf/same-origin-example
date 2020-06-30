#!/bin/sh

docker run -d -p 8002:80 -e VIRTUAL_HOST=b.test.localhost -v ~/same-origin-example/b:/usr/share/nginx/html:ro nginx
docker run -d -p 8001:80 -e VIRTUAL_HOST=a.test.localhost -v ~/same-origin-example/a:/usr/share/nginx/html:ro nginx
docker run -d -p 80:80 -v /var/run/docker.sock:/tmp/docker.sock:ro jwilder/nginx-proxy         
