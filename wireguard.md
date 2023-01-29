# Wireguard

```
wg-quick up <INTERFACE>

wg-quick down <INTERFACE>

wg setconf <INTERFACE> <FILE>
```

## Add peer

````
wg genkey | tee privatekey | wg pubkey > publickey

wg set wg0 peer <PUBLIC> allowed-ips <IP>
````


## .conf

```
[Interface]
Address = {peer-ip}/32
PrivateKey = {peer-private}
ListenPort = {any}
DNS = 1.1.1.1
# Uncomment this line if you are having issues with DNS leak
#BlockDNS = true


[Peer]
PublicKey = {host_public_key}
Endpoint = {remote_host_ip}:{remote_listen_port}
AllowedIPs = 0.0.0.0/0

# This is for if you're behind a NAT and
# want the connection to be kept alive.
#PersistentKeepalive = 25
```
