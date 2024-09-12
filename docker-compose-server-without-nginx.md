# deploy using docker-compose-server-without-nginx.yml

## run

```bash
cd /opt/program/snapdrop/ # modify to your path
docker compose -f docker-compose-server-without-nginx.yml up -d
```

## nginx conf file example for docker-compose-server-without-nginx.yml

```bash
server {
    server_name drop.exampledomain.xyz; # modify to your domain

    expires epoch;

    location /en {
        alias   /opt/program/snapdrop/client; # modify to your path
        index  index.html index.htm;
        charset utf-8;
    }

    location / {
        root   /opt/program/snapdrop/translation/zhcn/client; # modify to your path
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

    listen 443 ssl;

    ssl_certificate /etc/certs/drop.exampledomain.xyz/fullchain.pem; # modify to your path
    ssl_certificate_key /etc/certs/drop.exampledomain.xyz/privkey.pem; # modify to your path

}

server {
    listen 80;
    listen [::]:80;
    server_name drop.exampledomain.xyz;  # modify to your domain

    location / {
        if ($host = 'drop.exampledomain.xyz') {  # modify to your domain
            rewrite ^/(.*)$ https://drop.exampledomain.xyz:443 permanent;  # modify to your domain
        }
    }
}
```
