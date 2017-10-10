# 介绍
  基于docker的shadowsocks client
  .env文件中的SS\_LOCAL\_PORT用于指示本地本地打开的端口号.所以实际使用过程中,可以执行多个client,对应不同端口号.

# 用法
```bash
git clone git@github.com:terryzwt/docker-shadowsocks-client-python.git
cd docker-shadowsocks-client-python
cp env-example .env
cp shadowsocks.json.example shadowsocks.json ##然后修改配置文件,使用正确的shadowsock配置.
docker-compose up -d
```
