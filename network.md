Here's my current network connection configuration on Android.

## General

- [Insular](https://gitlab.com/secure-system/Insular) (`com.oasisfeng.island.fdroid`) from [F-Droid](https://f-droid.org/packages/com.oasisfeng.island.fdroid) manages Work Profile. You can also use [Shelter](https://gitea.angry.im/PeterCxy/Shelter) (`net.typeblog.shelter`) from [F-Droid](https://droidify.app/app/?id=net.typeblog.shelter&repo_address=https://fdroid.typeblog.net).
- [TrackerControl](https://github.com/TrackerControl/tracker-control-android) (`net.kollnig.missioncontrol.fdroid`) from [F-Droid](https://f-droid.org/packages/net.kollnig.missioncontrol.fdroid) in Personal Profile as VPN of Personal Profile
  - Tracker blocker
  - UDP tracker blocker
  - Port forwarding: 53/UDP -> 5354, 53/TCP -> 5354, 853/UDP -> 5354, 853/TCP -> 5354
  - Socks5 proxy: -> 1080
- [InviZible Pro: Tor & Firewall, DNSCrypt & I2P](https://github.com/Gedsh/InviZible) (`pan.alexander.tordnscrypt.stable`) from [F-Droid](https://f-droid.org/packages/pan.alexander.tordnscrypt.stable) proxy mode in Personal Profile
  - DNSCrypt server at port 5354
    - DNSCrypt servers: adguard-dns-unfiltered-doh/adguard-dns-unfiltered-doh-ipv6/cloudflare/cloudflare-ipv6
    - Bootstrap resolver: 1.1.1.1, 1.0.0.1, 2606:4700:4700::1111, 2606:4700:4700::1001, 94.140.14.140, 94.140.14.141, 2a10:50c0::1:ff, 2a10:50c0::2:ff
    - Remote blacklist: https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts
    - Socks5 proxy: -> 1080 (without Tor) or 9051 (with Tor)
  - Tor server at port 9051 (With Tor)
    - Socks5 proxy: -> 1080
- [Sock5](https://github.com/heiher/socks5) (`hev.socks5`) from [GitHub release](https://github.com/heiher/socks5/releases) in Work Profile:
  - Socks5 server at port 1080 with UDP ASSOCIATE
- [Tailscale](https://github.com/tailscale/tailscale-android) (`com.tailscale.ipn`) from [F-Droid](https://f-droid.org/packages/com.tailscale.ipn) in Work Profile as VPN of Work Profile when needed
- [InviZible Pro: Tor & Firewall, DNSCrypt & I2P](https://github.com/Gedsh/InviZible) (`pan.alexander.tordnscrypt.stable`) from [F-Droid](https://f-droid.org/packages/pan.alexander.tordnscrypt.stable) VPN mode in Work Profile as VPN of Work Profile when needed
- [Tailscale](https://github.com/tailscale/tailscale-android) (`com.tailscale.ipn`) from [F-Droid](https://f-droid.org/packages/com.tailscale.ipn) in Personal Profile as VPN of Personal Profile when Tailscale UDP multicast is needed in Personal Profile

A more detailed guide about the apps and my old configuration is in my [Android-Non-Root](https://github.com/Willie169/Android-Non-Root) repo. I'll update them when I have time.

## Route Without Tor

This is my default configuration.

- Personal Profile UDP or TCP requests at port 53 -> TrackerControl port forwarding to port 5354 -> InviZible Pro DNS server at port 5354 outbound through Socks5 proxy at port 1080 -> Socks5 Sock5 server at port 1080 -> Work Profile VPN (if any) -> DNS resolved
- Personal Profile other requests -> TrackerControl outbound through Socks5 proxy at port 1080 -> Socks5 Sock5 server at port 1080 -> Work Profile VPN (if any) -> Outbound
- Work Profile requests -> Work Profile VPN (if any) -> Outbound

## Route With Tor

If the goal is anonymity, use [Tor Browser](https://www.torproject.org/download/#android) (`org.torproject.torbrowser`) from [FFUpdater](https://github.com/Tobi823/ffupdater) instead of this because it not only change your IP but also protects fingerprints. I typically use Tor Browser in Work Profile instead of this.

UDP won't work in the with this configuration.

- Personal Profile UDP or TCP requests at port 53 -> TrackerControl UDP port forwarding to port 5354 -> InviZible Pro DNS server at port 5354 outbound through Socks5 proxy at port 9051 -> InviZible Pro Tor Socks5 server at port 9051 outbound through Socks5 proxy at port 1080 -> Socks5 Sock5 server at port 1080 -> Work Profile VPN (if any) -> DNS resolved
- Personal Profile other requests -> TrackerControl outbound through Socks5 proxy at port 9051 -> InviZible Pro Tor Socks5 server at port 9051 outbound through Socks5 proxy at port 1080 -> Socks5 Sock5 server at port 1080 -> Work Profile VPN (if any) -> Outbound
- Work Profile requests -> Work Profile VPN (if any) -> Outbound

## Tailscale Personal Profile

Tailscale UDP multicast won't work in Personal Profile when Tailscale is running in Work Profile. Apps such as [RustDesk](https://github.com/rustdesk/rustdesk) (`com.carriez.flutter_hbb`) from [F-Droid](https://f-droid.org/packages/com.carriez.flutter_hbb) and [KDE Connect](https://invent.kde.org/network/kdeconnect-android) (`org.kde.kdeconnect_tp`) from [F-Droid](https://f-droid.org/packages/org.kde.kdeconnect_tp) rely on it to connect devices over Tailscale, while some use case such as RustDesk Input control only work in Personal Profile. In such case, Tailscale in Personal Profile may be used as Personal Profile VPN with the trade-off of disabling protection by TrackerControl and InviZible Pro in Personal Profile temporarily.
