Here's my current network connection configuration on Android.

## Apps Configurations

- [Insular](https://gitlab.com/secure-system/Insular) (`com.oasisfeng.island.fdroid`) from [F-Droid](https://f-droid.org/packages/com.oasisfeng.island.fdroid) manages Work Profile. You can also use [Shelter](https://gitea.angry.im/PeterCxy/Shelter) (`net.typeblog.shelter`) from [F-Droid](https://droidify.app/app/?id=net.typeblog.shelter&repo_address=https://fdroid.typeblog.net).
- [TrackerControl (TC)](https://github.com/TrackerControl/tracker-control-android) (`net.kollnig.missioncontrol.fdroid`) from [F-Droid](https://f-droid.org/packages/net.kollnig.missioncontrol.fdroid) in Personal Profile as VPN of Personal Profile
  - Tracker blocker: You can see what domains each app (tried to) connect to in TrackerControl. I disabled internet connection for all system apps that do unnecessary internet connection. System apps that I didn't do so to avoid breaking things include: Google Play Services, Google Services Framework, Captive Portal Login, and App update.
  - UDP tracker blocker
  - Port forwarding: 53/UDP -> 5354, 53/TCP -> 5354, 853/UDP -> 5354, 853/TCP -> 5354
  - Socks5 proxy: -> 1080
- [InviZible Pro: Tor & Firewall, DNSCrypt & I2P](https://github.com/Gedsh/InviZible) (`pan.alexander.tordnscrypt.stable`) from [F-Droid](https://f-droid.org/packages/pan.alexander.tordnscrypt.stable) proxy mode in Personal Profile
  - Firewall: Only allow specific apps to access internet
  - DNSCrypt server at port 5354
    - DNSCrypt servers: adguard-dns-unfiltered-doh/adguard-dns-unfiltered-doh-ipv6/cloudflare/cloudflare-ipv6
    - Bootstrap resolver: 1.1.1.1, 1.0.0.1, 2606:4700:4700::1111, 2606:4700:4700::1001, 94.140.14.140, 94.140.14.141, 2a10:50c0::1:ff, 2a10:50c0::2:ff
    - Remote blacklist: <https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts>
    - Local blacklist: Add if needed, e.g. social media block
    - Socks5 proxy: -> 1080 (when [without Tor](#without-tor)) or 9051 (when [with Tor](#with-tor))
  - Tor server when [with Tor](#with-tor)
    - Socks5 server at port 9051
- [Sock5](https://github.com/heiher/socks5) (`hev.socks5`) from [GitHub release](https://github.com/heiher/socks5/releases) in Work Profile:
  - Listen Address: 127.0.0.1
  - Listen Port: 1080
  - UDP Listen Address: 127.0.0.1
  - UDP Listen Port: 1080
  - Bind IPv4 Address: 0.0.0.0
  - Bind IPv6 Address: ::
  - Bind Interface: (empty)
  - Auth Username: (empty)
  - Auth Password: (empty)
- [Tailscale](https://github.com/tailscale/tailscale-android) (`com.tailscale.ipn`) from [F-Droid](https://f-droid.org/packages/com.tailscale.ipn) in Work Profile as VPN of Work Profile when using Tailscale
- [InviZible Pro: Tor & Firewall, DNSCrypt & I2P](https://github.com/Gedsh/InviZible) (`pan.alexander.tordnscrypt.stable`) from [F-Droid](https://f-droid.org/packages/pan.alexander.tordnscrypt.stable) VPN mode in Work Profile as VPN of Work Profile when not using Tailscale
  - DNSCrypt server at port 5355
    - DNSCrypt servers: adguard-dns-unfiltered-doh/adguard-dns-unfiltered-doh-ipv6/cloudflare/cloudflare-ipv6
    - Bootstrap resolver: 1.1.1.1, 1.0.0.1, 2606:4700:4700::1111, 2606:4700:4700::1001, 94.140.14.140, 94.140.14.141, 2a10:50c0::1:ff, 2a10:50c0::2:ff
    - Remote blacklist: <https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts>
    - Local blacklist: Add if needed, e.g. social media block
  - Tor server when needed
    - Socks5 server at port 9053
- [Tailscale](https://github.com/tailscale/tailscale-android) (`com.tailscale.ipn`) from [F-Droid](https://f-droid.org/packages/com.tailscale.ipn) in Personal Profile as VPN of Personal Profile when Tailscale UDP multicast is needed in Personal Profile
- [Snowflake Volunteer](https://github.com/blocoio/snowflake) (`io.bloco.snowflake`) from [F-Droid](https://f-droid.org/packages/io.bloco.snowflake) in Work Profile when charging to helping bypass censorship.
- [Tor Browser](https://www.torproject.org/download/#android) (`org.torproject.torbrowser`) from [FFUpdater](https://github.com/Tobi823/ffupdater) in Work Profile: If the goal is anonymity, use this instead of the [with Tor](#with-tor) configurations because Tor Browser not only change your IP but also protects fingerprints.
- [Material Files](https://github.com/zhanghai/MaterialFiles) from [F-Droid](https://f-droid.org/packages/me.zhanghai.android.files) in Personal Profile:
  - FTP server at port 12121 with password authorization when needed
- [Material Files](https://github.com/zhanghai/MaterialFiles) from [F-Droid](https://f-droid.org/packages/me.zhanghai.android.files) in Work Profile:
  - FTP server at port 12221 with password authorization

## Without Tor

- Personal Profile DNS over UDP or TCP requests at port 53 or 853 -> TrackerControl port forwarding to port 5354 -> Personal Profile InviZible Pro DNSCrypt server at port 5354 outbound through Socks5 proxy at port 1080 -> Socks5 Sock5 server at port 1080 -> Work Profile VPN -> DNS resolved
- Personal Profile other requests -> TrackerControl outbound through Socks5 proxy at port 1080 -> Socks5 Sock5 server at port 1080 -> Work Profile VPN -> Outbound
- Work Profile requests -> Work Profile VPN -> Outbound

## With Tor

UDP and Tailscale in Personal Profile won't work in this configuration.

- Personal Profile DNS over UDP or TCP requests at port 53 or 853 -> TrackerControl port forwarding to port 5354 -> Personal Profile InviZible Pro DNSCrypt server at port 5354 outbound through Socks5 proxy at port 9051 -> Personal Profile InviZible Pro Tor Socks5 server at port 9051 -> DNS resolved
- Personal Profile other requests -> TrackerControl outbound through Socks5 proxy at port 9051 -> Personal Profile InviZible Pro Tor Socks5 server at port 9051 -> Outbound
- Work Profile requests -> Work Profile VPN -> Outbound

## Tailscale Personal Profile

Tailscale UDP multicast won't work in Personal Profile when Tailscale is running in Work Profile. Apps such as [RustDesk](https://github.com/rustdesk/rustdesk) (`com.carriez.flutter_hbb`) from [F-Droid](https://f-droid.org/packages/com.carriez.flutter_hbb) and [KDE Connect](https://invent.kde.org/network/kdeconnect-android) (`org.kde.kdeconnect_tp`) from [F-Droid](https://f-droid.org/packages/org.kde.kdeconnect_tp) rely on it to connect devices over Tailscale, while some use case such as RustDesk Input control only work in Personal Profile. In such case, Tailscale in Personal Profile may be used as Personal Profile VPN with the trade-off of disabling protection by TrackerControl and InviZible Pro in Personal Profile temporarily.
