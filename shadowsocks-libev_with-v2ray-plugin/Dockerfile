ARG SHADOWSOCKS_LIBEV_VERSION=edge

FROM shadowsocks/shadowsocks-libev:${SHADOWSOCKS_LIBEV_VERSION}

ARG V2RAY_PLUGIN_VERSION=v1.3.2

ENV TZ=Asia/Shanghai

RUN cd /tmp \
    && wget -O v2ray-plugin.tar.gz https://github.com/shadowsocks/v2ray-plugin/releases/download/${V2RAY_PLUGIN_VERSION}/v2ray-plugin-linux-amd64-${V2RAY_PLUGIN_VERSION}.tar.gz \
    && tar -xzvf v2ray-plugin.tar.gz \
    && rm -rf v2ray-plugin.tar.gz \
    && chmod +x v2ray-plugin_* \
    && mv v2ray-plugin_* /usr/local/bin/v2ray-plugin \
    && mkdir /var/run/ss-manager
COPY ./entrypoint.sh /usr/local/bin/docker-entrypoint.sh

ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["ss-server", "-c", "/config/config.json", "-u", "-D", "/tmp/ss-manager"]
