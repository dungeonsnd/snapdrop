# deploy using docker-compose-server-without-nginx.yml

## run

```bash
cd /opt/program/snapdrop/
docker compose -f docker-compose-server-without-nginx.yml up -d
```

## nginx conf file example for docker-compose-server-without-nginx.yml

```bash
server {
    server_name drop.exampledomain.xyz;

    expires epoch;

    location / {
        root   /opt/program/snapdrop/translation/zhcn/client;
        index  index.html index.htm;
        charset utf-8;
    }

    location /en {
        root   /opt/program/snapdrop/client;
        index  index.html index.htm;
        charset utf-8;
    }

    location /server {
        proxy_connect_timeout 1200;
        proxy_pass http://localhost:2000;
        proxy_set_header Connection "upgrade";
        proxy_set_header Upgrade $http_upgrade;
        proxy_set_header X-Forwarded-for $remote_addr;
    }

    listen 443 ssl; # managed by Certbot

    ssl_certificate /etc/certs/drop.exampledomain.xyz/fullchain.pem;
    ssl_certificate_key /etc/certs/drop.exampledomain.xyz/privkey.pem;

}

server {
    listen 80;
    listen [::]:80;
    server_name drop.exampledomain.xyz;

    location / {
        if ($host = 'drop.exampledomain.xyz') {
            rewrite ^/(.*)$ https://drop.exampledomain.xyz:443 permanent;
        }
    }
}
```
