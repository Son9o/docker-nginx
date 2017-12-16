Build command: docker build -t docker-nginx .

Run command: docker run --name docker-nginx -p 8080:80 -d -v /tmp:/var/log/nginx docker-nginx
