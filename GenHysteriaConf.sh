#!/bin/bash

# 定义域名变量
domain="bing.com"

# 生成密码
password=$(openssl rand -base64 12)

# 生成文件内容
file_content="# listen: :443
domain: ${domain}
tls:
 cert: ${domain}.crt
 key: ${domain}.key

auth:
 type: password
 password: $password

masquerade:
 type: proxy
 proxy:
  url: https://bing.com
  rewriteHost: true"

# 将文件内容写入文件
echo "$file_content" > config.yaml

# 获取ipv6或ipv4地址
ip=$(curl -s https://ipv4.icanhazip.com)

# 判断 防火墙有无iptables -t nat -A PREROUTING -i eth0 -p udp --dport 20000:50000 -j DNAT --to-destination :443
# ip6tables -t nat -A PREROUTING -i eth0 -p udp --dport 20000:50000 -j DNAT --to-destination :443
if iptables -t nat -L | grep ":20000:50000" &>/dev/null || ip6tables -t nat -L | grep ":20000:50000" &>/dev/null; then
  # 如果有则输出ipv6或ipv4地址和密码
  echo "hy2://${password}@[${ip}]:443/?mport=443%2C20000-50000&sni=${domain}#M-Hysteria2"
else
  # 如果没有则输出ipv6或ipv4地址和密码及insecure=1参数
  echo "hy2://${password}@[${ip}]:443/?insecure=1&sni=${domain}#Misaka-Hysteria2"
fi
