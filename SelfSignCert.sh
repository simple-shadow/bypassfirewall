#!/bin/bash

# 将域名作为变量
domain_name="bing.com"

# 生成私钥
openssl genrsa -out ${domain_name}.key 2048

# 生成自签名证书
openssl req -x509 -new -key ${domain_name}.key -out ${domain_name}.crt -days 365 -subj "/C=CN/ST=Beijing/L=Haidian/O=Acme Corporation/OU=IT Department/CN=${domain_name}"

# 创建包含密钥和证书的 PEM 文件
openssl pkcs12 -export -in ${domain_name}.crt -inkey ${domain_name}.key -out ${domain_name}.pem -password pass:changeit

# 打印成功消息
echo "自签名证书生成成功！"
