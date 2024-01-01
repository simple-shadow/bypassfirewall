# 1.生成自签证书
```
SCRIPT=$(curl -sSL https://raw.githubusercontent.com/simple-shadow/bypassfirewall/main/SelfSignCert.sh) && echo "$SCRIPT" | bash -
```
# 2.1 hysteria config
```
SCRIPT=$(curl -sSL https://raw.githubusercontent.com/simple-shadow/bypassfirewall/main/GenHysteriaConf.sh) && echo "$SCRIPT" | bash -
```
# 3.1 build xray in xui
```
bash <(curl -Ls https://raw.githubusercontent.com/mhsanaei/3x-ui/master/install.sh)
```
🔔More web panel refer to https://github.com/XTLS/Xray-core/blob/main/README.md
