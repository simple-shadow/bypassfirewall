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

# 输出成功信息
echo "配置文件已生成，文件名为 config.yaml"
