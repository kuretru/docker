# shadowsocks-libev_with-v2ray-plugin

Original shadowsocks-libev and v2ray-plugin bundle

## Usage

```shell
mkdir -p /home/docker/shadowsocks-libev_with_v2ray-plugin
wget -O compose.yaml https://github.com/kuretru/docker/raw/main/shadowsocks-libev_with-v2ray-plugin/compose.yaml

mkdir config && cd config/
wget -O config.json https://github.com/kuretru/docker/raw/main/shadowsocks-libev_with-v2ray-plugin/config.json
# Do your changes
cd ../

docker compose up -d
```
