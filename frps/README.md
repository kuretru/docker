# frps

frp server, A fast reverse proxy to help you expose a local server behind a NAT or firewall to the internet.

## Usage

```shell
mkdir -p /home/docker/frps && cd /home/docker/frps
wget -O compose.yaml https://github.com/kuretru/docker/raw/main/frps/compose.yaml

mkdir config && cd config/
wget -O frps.ini https://raw.githubusercontent.com/fatedier/frp/dev/conf/frps_full.ini
# Do your changes
cd ../

docker compose up -d
```
