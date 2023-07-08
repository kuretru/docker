# ssmgr

shadowsocks-manager

## Usage

```shell
mkdir -p /home/docker/shadowsocks-manager
wget -O compose.yaml https://github.com/kuretru/docker/raw/main/shadowsocks-manager/compose.yaml

mkdir config && cd config/
# Do your changes
cat <<EOF >default.yml
type: s

shadowsocks:
  address: 127.0.0.1:6001
manager:
  address: 0.0.0.0:4001
  password: '$SSMGR_PASSWORD'
db: 'server.sqlite'
EOF
cd ../

docker compose up -d
```
