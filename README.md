# Tun2SocksKit

[![Downloads][0]][1]

[0]: https://img.shields.io/github/downloads/tozik/Tun2SocksKit/total.svg
[1]: https://github.com/tozik/Tun2SocksKit/releases/latest

### Important changes

> `2.4.0` Support maccatalyst（arm64、x86_64）by [@hossinasaadi](https://github.com/hossinasaadi)

> `2.2.1` Support macOS（arm64、x86_64）

> ~~`2.2.0` 支持macOS（arm64、x86_64）~~

> `2.1.16` iPhone sim support，[hev-socks5-tunnel-iphonesimulator](https://github.com/daemooon/hev-socks5-tunnel-iphonesimulator)实现

> ~~`2.1.10` Simulator support arm64~~

> `2.0.1` 使用[hev-socks5-tunnel](https://github.com/heiher/hev-socks5-tunnel)替换[leaf](https://github.com/eycorsican/leaf)实现


### How to run
```swift
import Tun2SocksKit

Socks5Tunnel.run(withFileDescriptor: 4, configFilePath: localConfigFileURL.path(percentEncoded: false))
```

### Configuration file（source [hev-socks5-tunnel](https://github.com/heiher/hev-socks5-tunnel)）
```yml
tunnel:
  mtu: 9000

socks5:
  port: 7890
  address: ::1
  udp: 'udp'

misc:
  task-stack-size: 20480
  connect-timeout: 5000
  read-write-timeout: 60000
  log-file: stderr
  log-level: debug
  limit-nofile: 65535
```






