# 📄Index
1. Is inital jobs
2. About Hysteria
3. About vless/trojan/vmess/shadowsocks(tcp protocol)
## 1.Genreate self-signed cert
```
SCRIPT=$(curl -sSL https://raw.githubusercontent.com/simple-shadow/bypassfirewall/main/SelfSignCert.sh) && echo "$SCRIPT" | bash -
```
## 2.1 hysteria config
```
SCRIPT=$(curl -sSL https://raw.githubusercontent.com/simple-shadow/bypassfirewall/main/GenHysteriaConf.sh) && echo "$SCRIPT" | bash -
```
## 2.2 install hysteria
```
bash <(curl -fsSL https://get.hy2.sh/)
```
## 2.3 set hysteria port-hopping
```
iptables -t nat -A PREROUTING -i eth0 -p udp --dport 20000:50000 -j DNAT --to-destination :443
```
```
ip6tables -t nat -A PREROUTING -i eth0 -p udp --dport 20000:50000 -j DNAT --to-destination :443
```
## 2.4 run hysteria
```
hysteria server -c ~/config.yaml
```
## 3.1 build xray in xui
```
bash <(curl -Ls https://raw.githubusercontent.com/mhsanaei/3x-ui/master/install.sh)
```
🔔More web panel refer to https://github.com/XTLS/Xray-core/blob/main/README.md

# ⚠️：Disclaimer

This repository provides scripts for setting up proxy/VPN services with the purpose of helping users access restricted resources on the Internet. We understand that proxy/VPN services are illegal in certain countries and regions, thus we strongly advise you to carefully read and obey local laws and regulations before using this repository.

We are not responsible for any legal consequences resulting from the use of this repository. Please carefully consider the risks before using this repository and make sure that you are capable of assuming the legal consequences resulting from it.

We make no guarantees about the accuracy and reliability of the scripts provided in this repository. We strongly suggest you to carefully examine the content of the scripts before using them and make sure that you understand their functionalities and potential risks.

We are not responsible for any damage caused to your devices or data as a result of using this repository. Please make sure you have sufficient backups and are able to recover your devices and data if any problems occur before using it.

We are not responsible for any privacy leaks or other security issues resulting from the use of this repository. Please make sure you have sufficient network security knowledge and take proper measures to protect your privacy and security before using it.

This disclaimer may be updated or revised at any time without further notice. Please visit this page regularly to keep yourself informed on the latest disclaimer.

