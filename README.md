# Samsung Android Debloat List

This repo contains the list of apps I uninstalled on my Galaxy S24+ (SM-S9260) Android 16 device.

## Description

You can use ADB, on phone via [Shizuku](https://github.com/thedjchi/Shizuku) or from a computer via [Android SDK Platform Tools](https://developer.android.com/tools/releases/platform-tools), or root, or other apps utilizing either of them, such as a terminal app with `rish` and `rish_shizuku.dex` provided by Shizuku, [Hail](https://github.com/aistra0528/Hail) with Shizuku, or [Canta](https://github.com/samolego/Canta) with Shizuku, on phone, or [Universal Android Debloater Next Generation](https://github.com/Universal-Debloater-Alliance/universal-android-debloater-next-generation) or [Universal Android Debloater GUI](https://github.com/0x192/universal-android-debloater), from a computer, to disable (`pm disable --user 0 <package_name>`), enable (`pm enable --user 0 <package_name>`), uninstall (`pm uninstall --user 0 <package_name>`), and reinstall (for system apps) (`pm install-existing --user 0 <package_name>`) apps.

Shizuku is an Android app that allows other apps to use system-level APIs that require ADB/root privileges. I recommend using [thedjchi's fork](https://github.com/thedjchi/Shizuku) fork and manage its installation using [Obtainium](https://github.com/ImranR98/Obtainium). Please visit the [official wiki](https://github.com/thedjchi/Shizuku/wiki) and [thedjchi's repo](https://github.com/thedjchi/Shizuku) for setup, info, troubleshooting steps, etc.

The list is provided in four formats: [Raw List](#raw-list), [ADB Disable Command](#adb-disable-command), [ADB Uninstall Command](#adb-uninstall-command), and [Hail](#hail). ADB Disable Command and ADB Uninstall Command formats can be used directly in ADB shell. Hail format can be used in [Hail](https://github.com/aistra0528/Hail), which can be installed from [F-Droid](https://f-droid.org/packages/com.aistra.hail). The steps to use the list in Hail with Shizuku is as follows:
1. Start [Shizuku](https://github.com/thedjchi/Shizuku).
2. Copy the list.
2. Open Hail.
2. Go to `Settings > Work mode` and select `Shizuku - Disable`.
2. Go to `Home`, click three dots at the top right corner, click `Import app > Import from Clipboard`.

Visit my [Android-Non-Root](https://github.com/Willie169/Android-Non-Root) repo for more Android tips. Some of them is outdated as of the time writing this (April 28, 2026). I'll update them when I have time.

## Read Before Execution

**Use at your own risk. I, as well as all projects mentioned or used in this guide, am not responsible for any data loss, boot loop, bricking, or any other damage caused by following this guide or doing other operations due to or related to the guide. This project is licensed under GPL 3.0. See [LICENSE.txt](LICENSE.txt) for the legal code.**

- Disabling/uninstalling `com.samsung.android.wifi.softap.resources` may cause mobile data and/or mobile hotspot to fail, so it is not disabled/uninstalled in the list.
- Disabling/uninstalling DiagMonAgent (`com.sec.android.diagmonagent`) may cause crashes, so it is not disabled/uninstalled in the list.
- Disabling/uninstalling NFC Service (`com.android.nfc`) may cause crashes, so it is not disabled/uninstalled in the list.
- Disabling/uninstalling Samsung Account (`com.osp.app.signin`) may cause crashes, so it is not disabled/uninstalled in the list.
- Disabling/uninstalling Samsung Location SDK (`com.sec.location.nsflp2`) will cause GPS location not be able to be recieved, so it is not disabled/uninstalled in the list.
- Disabling/uninstalling Samsung Wallet Digital Key (`com.samsung.android.dkey`) may cause increase in background resources usage, so it is not disabled/uninstalled in the list.
- Disabling/uninstalling Smart View (`com.samsung.android.smartmirroring`) may cause One UI Home (`com.sec.android.app.launcher`) and/or Video Player (`com.samsung.android.video`) to crash, so it is not disabled/uninstalled in the list.
- If Android Setup (`com.google.android.setupwizard`) sends a notification after ADB operations, run the following inside ADB shell to turn it off:
  ```
  settings put global setup_wizard_has_run 1
  settings put secure user_setup_complete 1
  settings put global device_provisioned 1
  ```
- Both Google Messages (`com.google.android.apps.messaging`) and Samsung Messages (`com.samsung.android.messaging`) are disabled/uninstalled in the list because I'm using [Fossify Messages](https://github.com/FossifyOrg/Messages) (`org.fossify.messages`) from [F-Droid](https://f-droid.org/packages/org.fossify.messages). Enable/install one of them if you use them.
- Camera (`com.sec.android.app.camera`) and Filter Provider (`com.samsung.android.provider.filterprovider`) are disabled/uninstalled in the list because I'm using [Open Camera](https://sourceforge.net/p/opencamera/code) (`net.sourceforge.opencamera`) from [F-Droid](https://f-droid.org/packages/net.sourceforge.opencamera) and [QR Scanner (PFA)](https://github.com/SecUSo/privacy-friendly-qr-scanner) from [F-Droid](https://f-droid.org/packages/com.secuso.privacyFriendlyCodeScanner). Enable/install them if you use Camera. Note that if you disable/uninstall Filter Provider and still use the stock Camera, it may crash.
- Contacts (`com.samsung.android.app.contacts`) is disabled/uninstalled in the list because I'm using [Fossify Contacts](https://github.com/FossifyOrg/Contacts) (`org.fossify.contacts`) from [F-Droid](https://f-droid.org/packages/org.fossify.contacts). Enable/install it if you use it.
- Gallery (`com.sec.android.gallery3d`), Gallery (`com.samsung.android.widget.pictureframe`), Gallery stories (`com.samsung.storyservice`), CMHProvider (`com.samsung.cmh`), FaceService (`com.samsung.faceservice`), Editor Lite (`com.samsung.app.newtrim`), and Photo Editor (`com.sec.android.mimage.photoretouching`) are disabled/uninstalled in the list because I'm using [Fossify Gallery](https://github.com/FossifyOrg/Gallery) (`org.fossify.gallery`) from [F-Droid](https://f-droid.org/packages/org.fossify.gallery), and [Image Toolbox](https://github.com/T8RIN/ImageToolbox) (`ru.tech.imageresizershrinker`) from [F-Droid](https://apt.izzysoft.de/fdroid/index/apk/ru.tech.imageresizershrinker). Note that disabling/uninstalling them will make you unable to preview photos in Camera (`com.sec.android.app.camera`). Enable/install them if you need.
- Gestural Navigation Bar (`com.samsung.internal.systemui.navbar.gestural_no_hint`), Gestural Navigation Bar (`com.samsung.internal.systemui.navbar.sec_gestural_no_hint`), and Gestural Navigation Bar (`com.samsung.internal.systemui.navbar.sec_gestural`) are disabled/uninstalled in the list. Enable/install them if you use them instead of 3 Button Navigation Bar (`com.android.internal.systemui.navbar.threebutton`).
- Phone (`com.samsung.android.dialer`) is disabled/uninstalled in the list because I'm using [Fossify Phone](https://github.com/FossifyOrg/Phone) (`org.fossify.phone`) from [F-Droid](https://f-droid.org/packages/org.fossify.phone). Enable/install it if you use it.
- Speech Recognition and Synthesis from Google (`com.google.android.tts`), Samsung text-to-speech engine (`com.samsung.SMT`), and the voices pre-installed on my phone, SamsungTTS US English Voice 1 (`com.samsung.SMT.lang_en_us_l03`), SamsungTTS 简体中文 语音 1 (`com.samsung.SMT.lang_zh_cn_l02`), SamsungTTS Cantonese Voice 1 (`com.samsung.SMT.lang_zh_hk_f00`), SamsungTTS Taiwanese Mandarin Voice 1 (`com.samsung.SMT.lang_zh_tw_f00`), are disabled/uninstalled in the list because I use [SherpaTTS](https://github.com/woheller69/ttsEngine) (`org.woheller69.ttsengine`) from [F-Droid](https://f-droid.org/packages/org.woheller69.ttsengine). Enable/install Samsung text-to-speech engine and the voices you want if you use them. Pre-installed voices differ across regions and all start with `com.samsung.SMT.lang_` , you can disable them with the ADB command:
  ```
  for pkg in $(pm list packages --user 0 -f | sed "s/.*=//" | grep com.samsung.SMT.lang_); do
    pm disable --user 0 $pkg
  done
  ```
  or uninstall them with the ADB command:
  ```
  for pkg in $(pm list packages --user 0 -f | sed "s/.*=//" | grep com.samsung.SMT.lang_); do
    pm uninstall --user 0 $pkg
  done
  ```
- Smart capture (`com.samsung.android.app.smartcapture`) is disabled/uninstalled in the list. This makes taking screenshots does not send notification but does not affect taking screenshots or other functionalities.
- See [Disabled/Uninstalled](#disabled-uninstalled) for an incomplete list of apps disabled/uninstalled in the list that you may want to enable and my recommended alternatives. See [Not Disabled/Uninstalled](#not-disabled-uninstalled) for an incomplete list of apps not disabled/uninstalled in the list that you may want to disable, reasons, and my recommended alternatives. Those already listed in this section are not listed again in those lists. I recommend using [Droid-fy](https://github.com/Droid-ify/client) (`com.looker.droidify`) from [F-Droid](https://f-droid.org/packages/com.looker.droidify) to install apps from F-Droid repositories (hereafter referred to as F-Droid), [FFUpdater](https://github.com/Tobi823/ffupdater) to install open source browsers, and using [Obtainium](https://github.com/ImranR98/Obtainium) (`dev.imranr.obtainium.fdroid`) to install apps from other sources such as GitHub release.

## Disabled/Uninstalled

This is an incomplete list of apps disabled/uninstalled in the list that you may want to enable and my recommended alternatives. User apps are not listed here since they are all safe to disable/uninstall.

- Android Switch (`com.google.android.apps.restore`)
- Android System Intelligence (`com.google.android.as`)
- Bixby (`com.samsung.android.bixby.agent`), Bixby Vision (`com.samsung.android.visionintelligence`), BixbyVision Framework (`com.samsung.android.bixbyvision.framework`), and Voice wake-up (`com.samsung.android.bixby.wakeup`)
- Digital Wellbeing (`com.samsung.android.forest`): [Mindful](https://github.com/akaMrNagar/Mindful) (`com.mindful.android`).
- Drawing assist (`com.samsung.android.app.sketchbook`)
- Galaxy Themes (`com.samsung.android.themestore`)
- Gemini (`com.google.android.apps.bard`): [website](https://gemini.google.com/app) with browser's "Add to Home screen".
- Google Location History (`com.google.android.gms.location.history`)
- Hey Google Hotword (`com.android.hotwordenrollment.xgoogle`) and OK Google Hotword (`com.android.hotwordenrollment.okgoogle`)
- Interpreter (`com.samsung.android.app.interpreter`)
- Link to Windows (`com.microsoft.appmanager`) and Link to Windows Service (`com.samsung.android.mdx`): [RustDesk](https://github.com/rustdesk/rustdesk) (`com.carriez.flutter_hbb`) from [F-Droid](https://f-droid.org/packages/com.carriez.flutter_hbb).
- Meet (`com.google.android.apps.tachyon`)
- Meta App Installer (`com.facebook.system`), Meta App Manager (`com.facebook.appmanager`), and Meta Services (`com.facebook.services`): Disabling them won't affect Facebook (`com.facebook.katana`), Messenger (`com.facebook.orca`), or any other app.
- Microsoft SwiftKey Keyboard (`com.touchtype.swiftkey`) and Microsoft SwiftKey Factory Settings (`com.swiftkey.swiftkeyconfigurator`): GBoard (`com.google.android.inputmethod.latin`) from [Google Play](https://play.google.com/store/apps/details?id=com.google.android.inputmethod.latin).
- Modes and Routines (`com.samsung.android.app.routines`)
- Neayby Service (`com.samsung.android.allshare.service.mediashare`), Nearby devices (`com.samsung.android.mydevice`), Nearby device scanning (`com.samsung.android.easysetup`), Nearby device scanning agent (`com.samsung.android.beaconmanager`)
- OneDrive (`com.microsoft.skydrive`)
- PrintSpooler (`com.android.printspooler`)
- ProxyHandler (`com.android.proxyhandler`)
- Quick Share (`com.samsung.android.app.sharelive`), Quick Share Agent (`com.samsung.android.aware.service`), Quick Share Connectivity (`com.samsung.android.mdx.kit`): [LocalSend](https://github.com/localsend/localsend) (`org.localsend.localsend_app`) from [F-Droid](https://f-droid.org/packages/org.localsend.localsend_app).
- Samsung Cloud (`com.samsung.android.scloud`)
- Samsung DeX Home (`com.sec.android.app.desktoplauncher`) and Samsung DeX (`com.sec.android.desktopmode.uiservice`)
- Samsung Pass (`com.samsung.android.samsungpass`) and Autofill with Samsung Pass (`com.samsung.android.samsungpassautofill`): [Bitwarden](https://github.com/bitwarden/android) (`com.x8bit.bitwarden`) from [F-Droid](https://droidify.app/app/?id=com.x8bit.bitwarden&repo_address=https://mobileapp.bitwarden.com/fdroid/repo).
- Samsung PaymentFramework (`com.samsung.android.spayfw`)
- Secure Folder (`com.samsung.knox.securefolder`)
- Smart Call (`com.samsung.android.smartcallprovider`) and Hiya Service (`com.hiya.star`)
- Smart Switch (`com.sec.android.easyMover`), and Smart Switch Agent (`com.sec.android.easyMover.Agent`)
- SmartThings Companion (`com.samsung.android.service.stplatform`)
- Studio (`com.sec.android.app.vepreload`): [Miniter](https://github.com/mlm-games/Miniter) (`org.mlm.miniter`) from [F-Droid](https://f-droid.org/packages/org.mlm.miniter).
- Tags (`com.android.apps.tag`)
- TalkBack (`com.samsung.android.accessibility.talkback`)
- Tasks (`com.samsung.android.app.taskedge`) and People (`com.samsung.android.service.peoplestripe`) of Edge panels
- Terminal (`com.android.virtualization.terminal`): Since it's not usable on this device after all as of the time writing this (April 28, 2026).
- Video Player (`com.samsung.android.video`): [VLC](https://code.videolan.org/videolan/vlc-android) (`org.videolan.vlc`) from [F-Droid](https://f-droid.org/packages/org.videolan.vlc).
- Voice Access (`com.google.android.apps.accessibility.voiceaccess`)
- Weather (`com.sec.android.daemonapp`): [Weather](https://github.com/breezy-weather/breezy-weather) (`org.breezyweather`) from [F-Droid](https://f-droid.org/packages/org.breezyweather).
- WiFi Calling (`com.sec.unifiedwfc`)
- YouTube (`com.google.android.youtube`): [PipePipe](https://github.com/InfinityLoop1308/PipePipe) (`InfinityLoop1309.NewPipeEnhanced`) from [GitHub release](https://github.com/InfinityLoop1308/PipePipe/releases) (recommended due to frequent updates) or [F-Droid](https://f-droid.org/packages/InfinityLoop1309.NewPipeEnhanced).

## Not Disabled/Uninstalled

This is an incomplete list of apps not disabled/uninstalled in the list that you may want to disable, reasons, and my recommended alternatives. User apps are not listed here since they are all safe to disable/uninstall.

- Adapt sound (`com.sec.hearingadjust`)
- Chrome (`com.android.chrome`): [Firefox](https://github.com/mozilla-mobile/firefox-android) (`org.mozilla.firefox`) from [FFUpdater](https://github.com/Tobi823/ffupdater) (recommended) or [Google Play](https://play.google.com/store/apps/details?id=org.mozilla.firefox), [Brave](https://github.com/brave/brave-browser) (`com.brave.browser`) [FFUpdater](https://github.com/Tobi823/ffupdater) (recommended) or [Google Play](https://play.google.com/store/apps/details?id=com.brave.browser), [Chromite ](https://github.com/uazo/cromite) (`org.cromite.cromite`) from [FFUpdater](https://github.com/Tobi823/ffupdater) (recommended) or [F-Droid](https://droidify.app/app/?id=org.cromite.cromite&repo_address=https://www.cromite.org/fdroid/repo).
- Edge panels, Clipboard edge (`com.samsung.android.app.clipboardedge`), Tools (`com.sec.android.app.quicktool`), and Samsung Keyboard (`com.samsung.android.honeyboard`) (Clipboard edge depends on Samsung Keyboard): [SmartEdge](https://github.com/Imtiaz-Official/Smart-Edge) (`com.imi.smartedge.sidebar.panel`) from [F-Droid](https://f-droid.org/packages/com.imi.smartedge.sidebar.panel) or [GitHub release](https://github.com/Imtiaz-Official/Smart-Edge/releases) (recommended due to frequent updates), [Glide](https://github.com/dagimg-dot/Glide) (`com.dagimg.glide`) from [GitHub release](https://github.com/dagimg-dot/Glide/releases), GBoard (`com.google.android.inputmethod.latin`) from [Google Play](https://play.google.com/store/apps/details?id=com.google.android.inputmethod.latin).
- Galaxy Store (`com.sec.android.app.samsungapps`)
- Game Booster (`com.samsung.android.game.gametools`) and Game Optimizing Service (`com.samsung.android.game.gos`)
- Gmail (`com.google.android.gm`): [Thunderbird](https://github.com/thunderbird/thunderbird-android) (`net.thunderbird.android`) from [FFUpdater](https://github.com/Tobi823/ffupdater) (recommended) or [F-Droid](https://f-droid.org/packages/net.thunderbird.android), [Proton Mail](https://github.com/ProtonMail/android-mail) (`ch.protonmail.android`) from [GitHub release](https://github.com/ProtonMail/android-mail/releases) (recommended) or [Google Play](https://play.google.com/store/apps/details?id=ch.protonmail.android), [You Have Mail](https://codeberg.org/angrypixel/you-have-mail) (`dev.lbeernaert.youhavemail`) from [F-Droid](https://f-droid.org/packages/dev.lbeernaert.youhavemail) [Tuta Mail](https://github.com/tutao/tutanota) (`de.tutao.tutanota`) from [F-Droid](https://f-droid.org/packages/de.tutao.tutanota).
- Google (`com.google.android.googlequicksearchbox`): [CircleToSearch](https://github.com/AKS-Labs/CircleToSearch) (`com.akslabs.circletosearch`) from [GitHub release](https://github.com/AKS-Labs/CircleToSearch/releases) or [F-Droid](https://f-droid.org/packages/com.akslabs.circletosearch), [Firefox](https://github.com/mozilla-mobile/firefox-android) (`org.mozilla.firefox`) from [FFUpdater](https://github.com/Tobi823/ffupdater) (recommended) or [Google Play](https://play.google.com/store/apps/details?id=org.mozilla.firefox), [Brave](https://github.com/brave/brave-browser) (`com.brave.browser`) [FFUpdater](https://github.com/Tobi823/ffupdater) (recommended) or [Google Play](https://play.google.com/store/apps/details?id=com.brave.browser), [Chromite ](https://github.com/uazo/cromite) (`org.cromite.cromite`) from [FFUpdater](https://github.com/Tobi823/ffupdater) (recommended) or [F-Droid](https://droidify.app/app/?id=org.cromite.cromite&repo_address=https://www.cromite.org/fdroid/repo).
- Live Transcribe & Sound Notifications (`com.google.audio.hearing.visualization.accessibility.scribe`)
- Maps (`com.google.android.apps.maps`): [website](https://www.google.com/maps) with browser's "Add to Home screen", [GMaps WV](https://github.com/woheller69/maps) (`us.spotco.maps`) from [F-Droid](https://f-droid.org/packages/us.spotco.maps>), [OsmAnd~](https://github.com/osmandapp/OsmAnd) (`net.osmand.plus`) from [F-Droid](https://droidify.app/app/?id=net.osmand.plus&repo_address=https://guardianproject-wind.s3.amazonaws.com/fdroid/repo).

## My Current Status

My current status as of the time writing this (April 28, 2026) is as follows:
- Not rooted, Shizuku constantly on.
- Uninstalled all apps in the list in this guide.
- Disabled Chrome (`com.android.chrome`), Google (`com.google.android.googlequicksearchbox`), and Maps (`com.google.android.apps.maps`), which can be enabled in Hail when needed.
- Network: Refer to [network.md](network.md).
- Social media:
  - BiliBili: [PipePipe](https://github.com/InfinityLoop1308/PipePipe) (`InfinityLoop1309.NewPipeEnhanced`) from [GitHub release](https://github.com/InfinityLoop1308/PipePipe/releases) (recommended due to frequent updates) or [F-Droid](https://f-droid.org/packages/InfinityLoop1309.NewPipeEnhanced).
  - Discord: [website](https://discord.com/channels/@me) with Firefox's "Add to Home screen".
  - Facebook: [website](https://www.facebook.com) with Firefox's "Add to Home screen".
  - Instagram: [website](https://www.instagram.com) with Firefox's "Add to Home screen".
  - Mastodon: [Mastodon](https://github.com/mastodon/mastodon-android) (`org.joinmastodon.android`) from (F-Droid](https://apt.izzysoft.de/fdroid/index/apk/org.joinmastodon.android) and [Mastodon Redirect](https://github.com/zacharee/MastodonRedirect) (`dev.zwander.mastodonredirect`) from [F-Droid](https://apt.izzysoft.de/fdroid/index/apk/dev.zwander.mastodonredirect).
  - Matrix: [Element X](https://github.com/element-hq/element-x-android) (`io.element.android.x`) from [F-Droid](https://f-droid.org/packages/io.element.android.x).
  - NicoNico: [PipePipe](https://github.com/InfinityLoop1308/PipePipe) (`InfinityLoop1309.NewPipeEnhanced`) from [GitHub release](https://github.com/InfinityLoop1308/PipePipe/releases) (recommended due to frequent updates) or [F-Droid](https://f-droid.org/packages/InfinityLoop1309.NewPipeEnhanced).
  - Reddit: [website](https://reddit.com) with Firefox's "Add to Home screen".
  - Telegram: [Forkgram / Fork Client](https://github.com/forkgram/TelegramAndroid) (`org.forkgram.messenger`) from [F-Droid](https://f-droid.org/packages/org.forkgram.messenger).
  - X: [website](https://x.com) with Firefox's "Add to Home screen" and [Nitterium](https://github.com/kaleedtc/Nitterium) (`com.kaleedtc.nitterium`) from [F-Droid](https://apt.izzysoft.de/fdroid/index/apk/com.kaleedtc.nitterium).
  - YouTube: [PipePipe](https://github.com/InfinityLoop1308/PipePipe) (`InfinityLoop1309.NewPipeEnhanced`) from [GitHub release](https://github.com/InfinityLoop1308/PipePipe/releases) (recommended due to frequent updates) or [F-Droid](https://f-droid.org/packages/InfinityLoop1309.NewPipeEnhanced).

## Raw List

```
android.autoinstalls.config.samsung
com.android.apps.tag
com.android.bips
com.android.bluetoothmidiservice
com.android.calllogbackup
com.android.dreams.phototable
com.android.egg
com.android.hotwordenrollment.okgoogle
com.android.hotwordenrollment.xgoogle
com.android.internal.systemui.navbar.gestural
com.android.microdroid.empty_payload
com.android.printspooler
com.android.providers.partnerbookmarks
com.android.theme.font.notoserifsource
com.android.traceur
com.android.virtualization.terminal
com.facebook.appmanager
com.facebook.services
com.facebook.system
com.google.android.adservices.api
com.google.android.aicore
com.google.android.apps.accessibility.voiceaccess
com.google.android.apps.aiwallpapers
com.google.android.apps.bard
com.google.android.apps.messaging
com.google.android.apps.restore
com.google.android.apps.tachyon
com.google.android.as
com.google.android.as.oss
com.google.android.federatedcompute
com.google.android.feedback
com.google.android.gms.location.history
com.google.android.gms.supervision
com.google.android.health.connect.backuprestore
com.google.android.healthconnect.controller
com.google.android.ondevicepersonalization.services
com.google.android.onetimeinitializer
com.google.android.overlay.modules.healthfitness.forframework
com.google.android.partnersetup
com.google.android.printservice.recommendation
com.google.android.projection.gearhead
com.google.android.safetycenter.resources
com.google.android.setupwizard
com.google.android.tts
com.google.android.youtube
com.google.ar.core
com.google.mainline.adservices
com.google.mainline.telemetry
com.hiya.star
com.knox.vpn.proxyhandler
com.microsoft.appmanager
com.microsoft.skydrive
com.mygalaxy.service
com.qti.qcc
com.qti.snapdragon.qdcm_ff
com.qualcomm.location
com.samsung.SMT
com.samsung.SMT.lang_en_us_l03
com.samsung.SMT.lang_zh_cn_l02
com.samsung.SMT.lang_zh_hk_f00
com.samsung.SMT.lang_zh_tw_f00
com.samsung.aasaservice
com.samsung.accessory.budsunitemgr
com.samsung.android.accessibility.talkback
com.samsung.android.aicore
com.samsung.android.aircommandmanager
com.samsung.android.allshare.service.mediashare
com.samsung.android.app.camera.sticker.facearavatar.preload
com.samsung.android.app.contacts
com.samsung.android.app.earphonetypec
com.samsung.android.app.interpreter
com.samsung.android.app.omcagent
com.samsung.android.app.parentalcare
com.samsung.android.app.routines
com.samsung.android.app.sketchbook
com.samsung.android.app.smartcapture
com.samsung.android.app.taskedge
com.samsung.android.app.watchmanagerstub
com.samsung.android.aremoji
com.samsung.android.aremojieditor
com.samsung.android.authfw
com.samsung.android.aware.service
com.samsung.android.bbc.bbcagent
com.samsung.android.beaconmanager
com.samsung.android.bixby.agent
com.samsung.android.bixby.wakeup
com.samsung.android.bixbyvision.framework
com.samsung.android.cameraxservice
com.samsung.android.carkey
com.samsung.android.da.daagent
com.samsung.android.dbsc
com.samsung.android.dck.timesync
com.samsung.android.dialer
com.samsung.android.dqagent
com.samsung.android.dsms
com.samsung.android.dynamiclock
com.samsung.android.easysetup
com.samsung.android.fast
com.samsung.android.forest
com.samsung.android.gru
com.samsung.android.hdmapp
com.samsung.android.hwresourceshare
com.samsung.android.hwresourceshare.storage
com.samsung.android.inputshare
com.samsung.android.intellivoiceservice
com.samsung.android.ipsgeofence
com.samsung.android.kidsinstaller
com.samsung.android.knox.analytics.uploader
com.samsung.android.knox.attestation
com.samsung.android.knox.containercore
com.samsung.android.knox.kpecore
com.samsung.android.knox.pushmanager
com.samsung.android.knox.zt.framework
com.samsung.android.mapsagent
com.samsung.android.mcfds
com.samsung.android.mcfserver
com.samsung.android.mdecservice
com.samsung.android.mdm
com.samsung.android.mdx
com.samsung.android.mdx.kit
com.samsung.android.messaging
com.samsung.android.mobileservice
com.samsung.android.mocca
com.samsung.android.mydevice
com.samsung.android.net.wifi.wifiguider
com.samsung.android.networkdiagnostic
com.samsung.android.privateaccesstokens
com.samsung.android.provider.filterprovider
com.samsung.android.rampart
com.samsung.android.rubin.app
com.samsung.android.samsungpass
com.samsung.android.samsungpassautofill
com.samsung.android.samsungpositioning
com.samsung.android.scloud
com.samsung.android.sdk.handwriting
com.samsung.android.sdm.config
com.samsung.android.server.wifi.mobilewips
com.samsung.android.service.peoplestripe
com.samsung.android.service.stplatform
com.samsung.android.service.tagservice
com.samsung.android.shortcutbackupservice
com.samsung.android.smartcallprovider
com.samsung.android.smartsuggestions
com.samsung.android.smartswitchassistant
com.samsung.android.spayfw
com.samsung.android.sskds
com.samsung.android.stickercenter
com.samsung.android.svcagent
com.samsung.android.themestore
com.samsung.android.video
com.samsung.android.vision.model
com.samsung.android.visionintelligence
com.samsung.android.visual.cloudcore
com.samsung.android.vtcamerasettings
com.samsung.android.wallpaper.live
com.samsung.app.newtrim
com.samsung.cmh
com.samsung.faceservice
com.samsung.gpuwatchapp
com.samsung.internal.systemui.navbar.gestural_no_hint
com.samsung.internal.systemui.navbar.sec_gestural
com.samsung.internal.systemui.navbar.sec_gestural_no_hint
com.samsung.ipservice
com.samsung.knox.securefolder
com.samsung.petservice
com.samsung.safetyinformation
com.samsung.sait.sohservice
com.samsung.storyservice
com.samsung.videoscan
com.sec.android.CcInfo
com.sec.android.RilServiceModeApp
com.sec.android.app.SecSetupWizard
com.sec.android.app.billing
com.sec.android.app.bluetoothagent
com.sec.android.app.camera
com.sec.android.app.chromecustomizations
com.sec.android.app.desktoplauncher
com.sec.android.app.factorykeystring
com.sec.android.app.hwmoduletest
com.sec.android.app.magnifier
com.sec.android.app.parser
com.sec.android.app.servicemodeapp
com.sec.android.app.setupwizardlegalprovider
com.sec.android.app.soundalive
com.sec.android.app.uwbtest
com.sec.android.app.ve.vebgm
com.sec.android.app.vepreload
com.sec.android.app.wlantest
com.sec.android.autodoodle.service
com.sec.android.daemonapp
com.sec.android.desktopmode.uiservice
com.sec.android.easyMover
com.sec.android.easyMover.Agent
com.sec.android.easyonehand
com.sec.android.gallery3d
com.sec.android.iaft
com.sec.android.llmpolicy
com.sec.android.mimage.avatarstickers
com.sec.android.mimage.photoretouching
com.sec.android.smartfpsadjuster
com.sec.android.widgetapp.easymodecontactswidget
com.sec.app.RilErrorNotifier
com.sec.bcservice
com.sec.enterprise.knox.cloudmdm.smdms
com.sec.epdgtestapp
com.sec.facatfunction
com.sec.factory.camera
com.sec.imslogger
com.sec.location.nfwlocationprivacy
com.sec.modem.settings
com.sec.phone
com.sec.spp.push
com.sec.unifiedwfc
com.sec.usbsettings
com.sec.vsim.ericssonnsds.webapp
com.sem.factoryapp
com.skms.android.agent
com.swiftkey.swiftkeyconfigurator
com.tencent.soter.soterserver
com.touchtype.swiftkey
com.wsomacp
org.ifaa.aidl.manager
```

## ADB Disable Command

```
pm disable --user 0 android.autoinstalls.config.samsung
pm disable --user 0 com.android.apps.tag
pm disable --user 0 com.android.bips
pm disable --user 0 com.android.bluetoothmidiservice
pm disable --user 0 com.android.calllogbackup
pm disable --user 0 com.android.dreams.phototable
pm disable --user 0 com.android.egg
pm disable --user 0 com.android.hotwordenrollment.okgoogle
pm disable --user 0 com.android.hotwordenrollment.xgoogle
pm disable --user 0 com.android.internal.systemui.navbar.gestural
pm disable --user 0 com.android.microdroid.empty_payload
pm disable --user 0 com.android.printspooler
pm disable --user 0 com.android.providers.partnerbookmarks
pm disable --user 0 com.android.theme.font.notoserifsource
pm disable --user 0 com.android.traceur
pm disable --user 0 com.android.virtualization.terminal
pm disable --user 0 com.facebook.appmanager
pm disable --user 0 com.facebook.services
pm disable --user 0 com.facebook.system
pm disable --user 0 com.google.android.adservices.api
pm disable --user 0 com.google.android.aicore
pm disable --user 0 com.google.android.apps.accessibility.voiceaccess
pm disable --user 0 com.google.android.apps.aiwallpapers
pm disable --user 0 com.google.android.apps.bard
pm disable --user 0 com.google.android.apps.messaging
pm disable --user 0 com.google.android.apps.restore
pm disable --user 0 com.google.android.apps.tachyon
pm disable --user 0 com.google.android.as
pm disable --user 0 com.google.android.as.oss
pm disable --user 0 com.google.android.federatedcompute
pm disable --user 0 com.google.android.feedback
pm disable --user 0 com.google.android.gms.location.history
pm disable --user 0 com.google.android.gms.supervision
pm disable --user 0 com.google.android.health.connect.backuprestore
pm disable --user 0 com.google.android.healthconnect.controller
pm disable --user 0 com.google.android.ondevicepersonalization.services
pm disable --user 0 com.google.android.onetimeinitializer
pm disable --user 0 com.google.android.overlay.modules.healthfitness.forframework
pm disable --user 0 com.google.android.partnersetup
pm disable --user 0 com.google.android.printservice.recommendation
pm disable --user 0 com.google.android.projection.gearhead
pm disable --user 0 com.google.android.safetycenter.resources
pm disable --user 0 com.google.android.setupwizard
pm disable --user 0 com.google.android.tts
pm disable --user 0 com.google.android.youtube
pm disable --user 0 com.google.ar.core
pm disable --user 0 com.google.mainline.adservices
pm disable --user 0 com.google.mainline.telemetry
pm disable --user 0 com.hiya.star
pm disable --user 0 com.knox.vpn.proxyhandler
pm disable --user 0 com.microsoft.appmanager
pm disable --user 0 com.microsoft.skydrive
pm disable --user 0 com.mygalaxy.service
pm disable --user 0 com.qti.qcc
pm disable --user 0 com.qti.snapdragon.qdcm_ff
pm disable --user 0 com.qualcomm.location
pm disable --user 0 com.samsung.SMT
pm disable --user 0 com.samsung.SMT.lang_en_us_l03
pm disable --user 0 com.samsung.SMT.lang_zh_cn_l02
pm disable --user 0 com.samsung.SMT.lang_zh_hk_f00
pm disable --user 0 com.samsung.SMT.lang_zh_tw_f00
pm disable --user 0 com.samsung.aasaservice
pm disable --user 0 com.samsung.accessory.budsunitemgr
pm disable --user 0 com.samsung.android.accessibility.talkback
pm disable --user 0 com.samsung.android.aicore
pm disable --user 0 com.samsung.android.aircommandmanager
pm disable --user 0 com.samsung.android.allshare.service.mediashare
pm disable --user 0 com.samsung.android.app.camera.sticker.facearavatar.preload
pm disable --user 0 com.samsung.android.app.contacts
pm disable --user 0 com.samsung.android.app.earphonetypec
pm disable --user 0 com.samsung.android.app.interpreter
pm disable --user 0 com.samsung.android.app.omcagent
pm disable --user 0 com.samsung.android.app.parentalcare
pm disable --user 0 com.samsung.android.app.routines
pm disable --user 0 com.samsung.android.app.sketchbook
pm disable --user 0 com.samsung.android.app.smartcapture
pm disable --user 0 com.samsung.android.app.taskedge
pm disable --user 0 com.samsung.android.app.watchmanagerstub
pm disable --user 0 com.samsung.android.aremoji
pm disable --user 0 com.samsung.android.aremojieditor
pm disable --user 0 com.samsung.android.authfw
pm disable --user 0 com.samsung.android.aware.service
pm disable --user 0 com.samsung.android.bbc.bbcagent
pm disable --user 0 com.samsung.android.beaconmanager
pm disable --user 0 com.samsung.android.bixby.agent
pm disable --user 0 com.samsung.android.bixby.wakeup
pm disable --user 0 com.samsung.android.bixbyvision.framework
pm disable --user 0 com.samsung.android.cameraxservice
pm disable --user 0 com.samsung.android.carkey
pm disable --user 0 com.samsung.android.da.daagent
pm disable --user 0 com.samsung.android.dbsc
pm disable --user 0 com.samsung.android.dck.timesync
pm disable --user 0 com.samsung.android.dialer
pm disable --user 0 com.samsung.android.dqagent
pm disable --user 0 com.samsung.android.dsms
pm disable --user 0 com.samsung.android.dynamiclock
pm disable --user 0 com.samsung.android.easysetup
pm disable --user 0 com.samsung.android.fast
pm disable --user 0 com.samsung.android.forest
pm disable --user 0 com.samsung.android.gru
pm disable --user 0 com.samsung.android.hdmapp
pm disable --user 0 com.samsung.android.hwresourceshare
pm disable --user 0 com.samsung.android.hwresourceshare.storage
pm disable --user 0 com.samsung.android.inputshare
pm disable --user 0 com.samsung.android.intellivoiceservice
pm disable --user 0 com.samsung.android.ipsgeofence
pm disable --user 0 com.samsung.android.kidsinstaller
pm disable --user 0 com.samsung.android.knox.analytics.uploader
pm disable --user 0 com.samsung.android.knox.attestation
pm disable --user 0 com.samsung.android.knox.containercore
pm disable --user 0 com.samsung.android.knox.kpecore
pm disable --user 0 com.samsung.android.knox.pushmanager
pm disable --user 0 com.samsung.android.knox.zt.framework
pm disable --user 0 com.samsung.android.mapsagent
pm disable --user 0 com.samsung.android.mcfds
pm disable --user 0 com.samsung.android.mcfserver
pm disable --user 0 com.samsung.android.mdecservice
pm disable --user 0 com.samsung.android.mdm
pm disable --user 0 com.samsung.android.mdx
pm disable --user 0 com.samsung.android.mdx.kit
pm disable --user 0 com.samsung.android.messaging
pm disable --user 0 com.samsung.android.mobileservice
pm disable --user 0 com.samsung.android.mocca
pm disable --user 0 com.samsung.android.mydevice
pm disable --user 0 com.samsung.android.net.wifi.wifiguider
pm disable --user 0 com.samsung.android.networkdiagnostic
pm disable --user 0 com.samsung.android.privateaccesstokens
pm disable --user 0 com.samsung.android.provider.filterprovider
pm disable --user 0 com.samsung.android.rampart
pm disable --user 0 com.samsung.android.rubin.app
pm disable --user 0 com.samsung.android.samsungpass
pm disable --user 0 com.samsung.android.samsungpassautofill
pm disable --user 0 com.samsung.android.samsungpositioning
pm disable --user 0 com.samsung.android.scloud
pm disable --user 0 com.samsung.android.sdk.handwriting
pm disable --user 0 com.samsung.android.sdm.config
pm disable --user 0 com.samsung.android.server.wifi.mobilewips
pm disable --user 0 com.samsung.android.service.peoplestripe
pm disable --user 0 com.samsung.android.service.stplatform
pm disable --user 0 com.samsung.android.service.tagservice
pm disable --user 0 com.samsung.android.shortcutbackupservice
pm disable --user 0 com.samsung.android.smartcallprovider
pm disable --user 0 com.samsung.android.smartsuggestions
pm disable --user 0 com.samsung.android.smartswitchassistant
pm disable --user 0 com.samsung.android.spayfw
pm disable --user 0 com.samsung.android.sskds
pm disable --user 0 com.samsung.android.stickercenter
pm disable --user 0 com.samsung.android.svcagent
pm disable --user 0 com.samsung.android.themestore
pm disable --user 0 com.samsung.android.video
pm disable --user 0 com.samsung.android.vision.model
pm disable --user 0 com.samsung.android.visionintelligence
pm disable --user 0 com.samsung.android.visual.cloudcore
pm disable --user 0 com.samsung.android.vtcamerasettings
pm disable --user 0 com.samsung.android.wallpaper.live
pm disable --user 0 com.samsung.app.newtrim
pm disable --user 0 com.samsung.cmh
pm disable --user 0 com.samsung.faceservice
pm disable --user 0 com.samsung.gpuwatchapp
pm disable --user 0 com.samsung.internal.systemui.navbar.gestural_no_hint
pm disable --user 0 com.samsung.internal.systemui.navbar.sec_gestural
pm disable --user 0 com.samsung.internal.systemui.navbar.sec_gestural_no_hint
pm disable --user 0 com.samsung.ipservice
pm disable --user 0 com.samsung.knox.securefolder
pm disable --user 0 com.samsung.petservice
pm disable --user 0 com.samsung.safetyinformation
pm disable --user 0 com.samsung.sait.sohservice
pm disable --user 0 com.samsung.storyservice
pm disable --user 0 com.samsung.videoscan
pm disable --user 0 com.sec.android.CcInfo
pm disable --user 0 com.sec.android.RilServiceModeApp
pm disable --user 0 com.sec.android.app.SecSetupWizard
pm disable --user 0 com.sec.android.app.billing
pm disable --user 0 com.sec.android.app.bluetoothagent
pm disable --user 0 com.sec.android.app.camera
pm disable --user 0 com.sec.android.app.chromecustomizations
pm disable --user 0 com.sec.android.app.desktoplauncher
pm disable --user 0 com.sec.android.app.factorykeystring
pm disable --user 0 com.sec.android.app.hwmoduletest
pm disable --user 0 com.sec.android.app.magnifier
pm disable --user 0 com.sec.android.app.parser
pm disable --user 0 com.sec.android.app.servicemodeapp
pm disable --user 0 com.sec.android.app.setupwizardlegalprovider
pm disable --user 0 com.sec.android.app.soundalive
pm disable --user 0 com.sec.android.app.uwbtest
pm disable --user 0 com.sec.android.app.ve.vebgm
pm disable --user 0 com.sec.android.app.vepreload
pm disable --user 0 com.sec.android.app.wlantest
pm disable --user 0 com.sec.android.autodoodle.service
pm disable --user 0 com.sec.android.daemonapp
pm disable --user 0 com.sec.android.desktopmode.uiservice
pm disable --user 0 com.sec.android.easyMover
pm disable --user 0 com.sec.android.easyMover.Agent
pm disable --user 0 com.sec.android.easyonehand
pm disable --user 0 com.sec.android.gallery3d
pm disable --user 0 com.sec.android.iaft
pm disable --user 0 com.sec.android.llmpolicy
pm disable --user 0 com.sec.android.mimage.avatarstickers
pm disable --user 0 com.sec.android.mimage.photoretouching
pm disable --user 0 com.sec.android.smartfpsadjuster
pm disable --user 0 com.sec.android.widgetapp.easymodecontactswidget
pm disable --user 0 com.sec.app.RilErrorNotifier
pm disable --user 0 com.sec.bcservice
pm disable --user 0 com.sec.enterprise.knox.cloudmdm.smdms
pm disable --user 0 com.sec.epdgtestapp
pm disable --user 0 com.sec.facatfunction
pm disable --user 0 com.sec.factory.camera
pm disable --user 0 com.sec.imslogger
pm disable --user 0 com.sec.location.nfwlocationprivacy
pm disable --user 0 com.sec.modem.settings
pm disable --user 0 com.sec.phone
pm disable --user 0 com.sec.spp.push
pm disable --user 0 com.sec.unifiedwfc
pm disable --user 0 com.sec.usbsettings
pm disable --user 0 com.sec.vsim.ericssonnsds.webapp
pm disable --user 0 com.sem.factoryapp
pm disable --user 0 com.skms.android.agent
pm disable --user 0 com.swiftkey.swiftkeyconfigurator
pm disable --user 0 com.tencent.soter.soterserver
pm disable --user 0 com.touchtype.swiftkey
pm disable --user 0 com.wsomacp
pm disable --user 0 org.ifaa.aidl.manager
```

## ADB Uninstall Command

```

pm uninstall --user 0 android.autoinstalls.config.samsung
pm uninstall --user 0 com.android.apps.tag
pm uninstall --user 0 com.android.bips
pm uninstall --user 0 com.android.bluetoothmidiservice
pm uninstall --user 0 com.android.calllogbackup
pm uninstall --user 0 com.android.dreams.phototable
pm uninstall --user 0 com.android.egg
pm uninstall --user 0 com.android.hotwordenrollment.okgoogle
pm uninstall --user 0 com.android.hotwordenrollment.xgoogle
pm uninstall --user 0 com.android.internal.systemui.navbar.gestural
pm uninstall --user 0 com.android.microdroid.empty_payload
pm uninstall --user 0 com.android.printspooler
pm uninstall --user 0 com.android.providers.partnerbookmarks
pm uninstall --user 0 com.android.theme.font.notoserifsource
pm uninstall --user 0 com.android.traceur
pm uninstall --user 0 com.android.virtualization.terminal
pm uninstall --user 0 com.facebook.appmanager
pm uninstall --user 0 com.facebook.services
pm uninstall --user 0 com.facebook.system
pm uninstall --user 0 com.google.android.adservices.api
pm uninstall --user 0 com.google.android.aicore
pm uninstall --user 0 com.google.android.apps.accessibility.voiceaccess
pm uninstall --user 0 com.google.android.apps.aiwallpapers
pm uninstall --user 0 com.google.android.apps.bard
pm uninstall --user 0 com.google.android.apps.messaging
pm uninstall --user 0 com.google.android.apps.restore
pm uninstall --user 0 com.google.android.apps.tachyon
pm uninstall --user 0 com.google.android.as
pm uninstall --user 0 com.google.android.as.oss
pm uninstall --user 0 com.google.android.federatedcompute
pm uninstall --user 0 com.google.android.feedback
pm uninstall --user 0 com.google.android.gms.location.history
pm uninstall --user 0 com.google.android.gms.supervision
pm uninstall --user 0 com.google.android.health.connect.backuprestore
pm uninstall --user 0 com.google.android.healthconnect.controller
pm uninstall --user 0 com.google.android.ondevicepersonalization.services
pm uninstall --user 0 com.google.android.onetimeinitializer
pm uninstall --user 0 com.google.android.overlay.modules.healthfitness.forframework
pm uninstall --user 0 com.google.android.partnersetup
pm uninstall --user 0 com.google.android.printservice.recommendation
pm uninstall --user 0 com.google.android.projection.gearhead
pm uninstall --user 0 com.google.android.safetycenter.resources
pm uninstall --user 0 com.google.android.setupwizard
pm uninstall --user 0 com.google.android.tts
pm uninstall --user 0 com.google.android.youtube
pm uninstall --user 0 com.google.ar.core
pm uninstall --user 0 com.google.mainline.adservices
pm uninstall --user 0 com.google.mainline.telemetry
pm uninstall --user 0 com.hiya.star
pm uninstall --user 0 com.knox.vpn.proxyhandler
pm uninstall --user 0 com.microsoft.appmanager
pm uninstall --user 0 com.microsoft.skydrive
pm uninstall --user 0 com.mygalaxy.service
pm uninstall --user 0 com.qti.qcc
pm uninstall --user 0 com.qti.snapdragon.qdcm_ff
pm uninstall --user 0 com.qualcomm.location
pm uninstall --user 0 com.samsung.SMT
pm uninstall --user 0 com.samsung.SMT.lang_en_us_l03
pm uninstall --user 0 com.samsung.SMT.lang_zh_cn_l02
pm uninstall --user 0 com.samsung.SMT.lang_zh_hk_f00
pm uninstall --user 0 com.samsung.SMT.lang_zh_tw_f00
pm uninstall --user 0 com.samsung.aasaservice
pm uninstall --user 0 com.samsung.accessory.budsunitemgr
pm uninstall --user 0 com.samsung.android.accessibility.talkback
pm uninstall --user 0 com.samsung.android.aicore
pm uninstall --user 0 com.samsung.android.aircommandmanager
pm uninstall --user 0 com.samsung.android.allshare.service.mediashare
pm uninstall --user 0 com.samsung.android.app.camera.sticker.facearavatar.preload
pm uninstall --user 0 com.samsung.android.app.contacts
pm uninstall --user 0 com.samsung.android.app.earphonetypec
pm uninstall --user 0 com.samsung.android.app.interpreter
pm uninstall --user 0 com.samsung.android.app.omcagent
pm uninstall --user 0 com.samsung.android.app.parentalcare
pm uninstall --user 0 com.samsung.android.app.routines
pm uninstall --user 0 com.samsung.android.app.sketchbook
pm uninstall --user 0 com.samsung.android.app.smartcapture
pm uninstall --user 0 com.samsung.android.app.taskedge
pm uninstall --user 0 com.samsung.android.app.watchmanagerstub
pm uninstall --user 0 com.samsung.android.aremoji
pm uninstall --user 0 com.samsung.android.aremojieditor
pm uninstall --user 0 com.samsung.android.authfw
pm uninstall --user 0 com.samsung.android.aware.service
pm uninstall --user 0 com.samsung.android.bbc.bbcagent
pm uninstall --user 0 com.samsung.android.beaconmanager
pm uninstall --user 0 com.samsung.android.bixby.agent
pm uninstall --user 0 com.samsung.android.bixby.wakeup
pm uninstall --user 0 com.samsung.android.bixbyvision.framework
pm uninstall --user 0 com.samsung.android.cameraxservice
pm uninstall --user 0 com.samsung.android.carkey
pm uninstall --user 0 com.samsung.android.da.daagent
pm uninstall --user 0 com.samsung.android.dbsc
pm uninstall --user 0 com.samsung.android.dck.timesync
pm uninstall --user 0 com.samsung.android.dialer
pm uninstall --user 0 com.samsung.android.dqagent
pm uninstall --user 0 com.samsung.android.dsms
pm uninstall --user 0 com.samsung.android.dynamiclock
pm uninstall --user 0 com.samsung.android.easysetup
pm uninstall --user 0 com.samsung.android.fast
pm uninstall --user 0 com.samsung.android.forest
pm uninstall --user 0 com.samsung.android.gru
pm uninstall --user 0 com.samsung.android.hdmapp
pm uninstall --user 0 com.samsung.android.hwresourceshare
pm uninstall --user 0 com.samsung.android.hwresourceshare.storage
pm uninstall --user 0 com.samsung.android.inputshare
pm uninstall --user 0 com.samsung.android.intellivoiceservice
pm uninstall --user 0 com.samsung.android.ipsgeofence
pm uninstall --user 0 com.samsung.android.kidsinstaller
pm uninstall --user 0 com.samsung.android.knox.analytics.uploader
pm uninstall --user 0 com.samsung.android.knox.attestation
pm uninstall --user 0 com.samsung.android.knox.containercore
pm uninstall --user 0 com.samsung.android.knox.kpecore
pm uninstall --user 0 com.samsung.android.knox.pushmanager
pm uninstall --user 0 com.samsung.android.knox.zt.framework
pm uninstall --user 0 com.samsung.android.mapsagent
pm uninstall --user 0 com.samsung.android.mcfds
pm uninstall --user 0 com.samsung.android.mcfserver
pm uninstall --user 0 com.samsung.android.mdecservice
pm uninstall --user 0 com.samsung.android.mdm
pm uninstall --user 0 com.samsung.android.mdx
pm uninstall --user 0 com.samsung.android.mdx.kit
pm uninstall --user 0 com.samsung.android.messaging
pm uninstall --user 0 com.samsung.android.mobileservice
pm uninstall --user 0 com.samsung.android.mocca
pm uninstall --user 0 com.samsung.android.mydevice
pm uninstall --user 0 com.samsung.android.net.wifi.wifiguider
pm uninstall --user 0 com.samsung.android.networkdiagnostic
pm uninstall --user 0 com.samsung.android.privateaccesstokens
pm uninstall --user 0 com.samsung.android.provider.filterprovider
pm uninstall --user 0 com.samsung.android.rampart
pm uninstall --user 0 com.samsung.android.rubin.app
pm uninstall --user 0 com.samsung.android.samsungpass
pm uninstall --user 0 com.samsung.android.samsungpassautofill
pm uninstall --user 0 com.samsung.android.samsungpositioning
pm uninstall --user 0 com.samsung.android.scloud
pm uninstall --user 0 com.samsung.android.sdk.handwriting
pm uninstall --user 0 com.samsung.android.sdm.config
pm uninstall --user 0 com.samsung.android.server.wifi.mobilewips
pm uninstall --user 0 com.samsung.android.service.peoplestripe
pm uninstall --user 0 com.samsung.android.service.stplatform
pm uninstall --user 0 com.samsung.android.service.tagservice
pm uninstall --user 0 com.samsung.android.shortcutbackupservice
pm uninstall --user 0 com.samsung.android.smartcallprovider
pm uninstall --user 0 com.samsung.android.smartsuggestions
pm uninstall --user 0 com.samsung.android.smartswitchassistant
pm uninstall --user 0 com.samsung.android.spayfw
pm uninstall --user 0 com.samsung.android.sskds
pm uninstall --user 0 com.samsung.android.stickercenter
pm uninstall --user 0 com.samsung.android.svcagent
pm uninstall --user 0 com.samsung.android.themestore
pm uninstall --user 0 com.samsung.android.video
pm uninstall --user 0 com.samsung.android.vision.model
pm uninstall --user 0 com.samsung.android.visionintelligence
pm uninstall --user 0 com.samsung.android.visual.cloudcore
pm uninstall --user 0 com.samsung.android.vtcamerasettings
pm uninstall --user 0 com.samsung.android.wallpaper.live
pm uninstall --user 0 com.samsung.app.newtrim
pm uninstall --user 0 com.samsung.cmh
pm uninstall --user 0 com.samsung.faceservice
pm uninstall --user 0 com.samsung.gpuwatchapp
pm uninstall --user 0 com.samsung.internal.systemui.navbar.gestural_no_hint
pm uninstall --user 0 com.samsung.internal.systemui.navbar.sec_gestural
pm uninstall --user 0 com.samsung.internal.systemui.navbar.sec_gestural_no_hint
pm uninstall --user 0 com.samsung.ipservice
pm uninstall --user 0 com.samsung.knox.securefolder
pm uninstall --user 0 com.samsung.petservice
pm uninstall --user 0 com.samsung.safetyinformation
pm uninstall --user 0 com.samsung.sait.sohservice
pm uninstall --user 0 com.samsung.storyservice
pm uninstall --user 0 com.samsung.videoscan
pm uninstall --user 0 com.sec.android.CcInfo
pm uninstall --user 0 com.sec.android.RilServiceModeApp
pm uninstall --user 0 com.sec.android.app.SecSetupWizard
pm uninstall --user 0 com.sec.android.app.billing
pm uninstall --user 0 com.sec.android.app.bluetoothagent
pm uninstall --user 0 com.sec.android.app.camera
pm uninstall --user 0 com.sec.android.app.chromecustomizations
pm uninstall --user 0 com.sec.android.app.desktoplauncher
pm uninstall --user 0 com.sec.android.app.factorykeystring
pm uninstall --user 0 com.sec.android.app.hwmoduletest
pm uninstall --user 0 com.sec.android.app.magnifier
pm uninstall --user 0 com.sec.android.app.parser
pm uninstall --user 0 com.sec.android.app.servicemodeapp
pm uninstall --user 0 com.sec.android.app.setupwizardlegalprovider
pm uninstall --user 0 com.sec.android.app.soundalive
pm uninstall --user 0 com.sec.android.app.uwbtest
pm uninstall --user 0 com.sec.android.app.ve.vebgm
pm uninstall --user 0 com.sec.android.app.vepreload
pm uninstall --user 0 com.sec.android.app.wlantest
pm uninstall --user 0 com.sec.android.autodoodle.service
pm uninstall --user 0 com.sec.android.daemonapp
pm uninstall --user 0 com.sec.android.desktopmode.uiservice
pm uninstall --user 0 com.sec.android.easyMover
pm uninstall --user 0 com.sec.android.easyMover.Agent
pm uninstall --user 0 com.sec.android.easyonehand
pm uninstall --user 0 com.sec.android.gallery3d
pm uninstall --user 0 com.sec.android.iaft
pm uninstall --user 0 com.sec.android.llmpolicy
pm uninstall --user 0 com.sec.android.mimage.avatarstickers
pm uninstall --user 0 com.sec.android.mimage.photoretouching
pm uninstall --user 0 com.sec.android.smartfpsadjuster
pm uninstall --user 0 com.sec.android.widgetapp.easymodecontactswidget
pm uninstall --user 0 com.sec.app.RilErrorNotifier
pm uninstall --user 0 com.sec.bcservice
pm uninstall --user 0 com.sec.enterprise.knox.cloudmdm.smdms
pm uninstall --user 0 com.sec.epdgtestapp
pm uninstall --user 0 com.sec.facatfunction
pm uninstall --user 0 com.sec.factory.camera
pm uninstall --user 0 com.sec.imslogger
pm uninstall --user 0 com.sec.location.nfwlocationprivacy
pm uninstall --user 0 com.sec.modem.settings
pm uninstall --user 0 com.sec.phone
pm uninstall --user 0 com.sec.spp.push
pm uninstall --user 0 com.sec.unifiedwfc
pm uninstall --user 0 com.sec.usbsettings
pm uninstall --user 0 com.sec.vsim.ericssonnsds.webapp
pm uninstall --user 0 com.sem.factoryapp
pm uninstall --user 0 com.skms.android.agent
pm uninstall --user 0 com.swiftkey.swiftkeyconfigurator
pm uninstall --user 0 com.tencent.soter.soterserver
pm uninstall --user 0 com.touchtype.swiftkey
pm uninstall --user 0 com.wsomacp
pm uninstall --user 0 org.ifaa.aidl.manager
```

## Hail

```
["android.autoinstalls.config.samsung","com.android.apps.tag","com.android.bips","com.android.bluetoothmidiservice","com.android.calllogbackup","com.android.dreams.phototable","com.android.egg","com.android.hotwordenrollment.okgoogle","com.android.hotwordenrollment.xgoogle","com.android.internal.systemui.navbar.gestural","com.android.microdroid.empty_payload","com.android.printspooler","com.android.providers.partnerbookmarks","com.android.theme.font.notoserifsource","com.android.traceur","com.android.virtualization.terminal","com.facebook.appmanager","com.facebook.services","com.facebook.system","com.google.android.adservices.api","com.google.android.aicore","com.google.android.apps.accessibility.voiceaccess","com.google.android.apps.aiwallpapers","com.google.android.apps.bard","com.google.android.apps.messaging","com.google.android.apps.restore","com.google.android.apps.tachyon","com.google.android.as","com.google.android.as.oss","com.google.android.federatedcompute","com.google.android.feedback","com.google.android.gms.location.history","com.google.android.gms.supervision","com.google.android.health.connect.backuprestore","com.google.android.healthconnect.controller","com.google.android.ondevicepersonalization.services","com.google.android.onetimeinitializer","com.google.android.overlay.modules.healthfitness.forframework","com.google.android.partnersetup","com.google.android.printservice.recommendation","com.google.android.projection.gearhead","com.google.android.safetycenter.resources","com.google.android.setupwizard","com.google.android.tts","com.google.android.youtube","com.google.ar.core","com.google.mainline.adservices","com.google.mainline.telemetry","com.hiya.star","com.knox.vpn.proxyhandler","com.microsoft.appmanager","com.microsoft.skydrive","com.mygalaxy.service","com.qti.qcc","com.qti.snapdragon.qdcm_ff","com.qualcomm.location","com.samsung.SMT","com.samsung.SMT.lang_en_us_l03","com.samsung.SMT.lang_zh_cn_l02","com.samsung.SMT.lang_zh_hk_f00","com.samsung.SMT.lang_zh_tw_f00","com.samsung.aasaservice","com.samsung.accessory.budsunitemgr","com.samsung.android.accessibility.talkback","com.samsung.android.aicore","com.samsung.android.aircommandmanager","com.samsung.android.allshare.service.mediashare","com.samsung.android.app.camera.sticker.facearavatar.preload","com.samsung.android.app.contacts","com.samsung.android.app.earphonetypec","com.samsung.android.app.interpreter","com.samsung.android.app.omcagent","com.samsung.android.app.parentalcare","com.samsung.android.app.routines","com.samsung.android.app.sketchbook","com.samsung.android.app.smartcapture","com.samsung.android.app.taskedge","com.samsung.android.app.watchmanagerstub","com.samsung.android.aremoji","com.samsung.android.aremojieditor","com.samsung.android.authfw","com.samsung.android.aware.service","com.samsung.android.bbc.bbcagent","com.samsung.android.beaconmanager","com.samsung.android.bixby.agent","com.samsung.android.bixby.wakeup","com.samsung.android.bixbyvision.framework","com.samsung.android.cameraxservice","com.samsung.android.carkey","com.samsung.android.da.daagent","com.samsung.android.dbsc","com.samsung.android.dck.timesync","com.samsung.android.dialer","com.samsung.android.dqagent","com.samsung.android.dsms","com.samsung.android.dynamiclock","com.samsung.android.easysetup","com.samsung.android.fast","com.samsung.android.forest","com.samsung.android.gru","com.samsung.android.hdmapp","com.samsung.android.hwresourceshare","com.samsung.android.hwresourceshare.storage","com.samsung.android.inputshare","com.samsung.android.intellivoiceservice","com.samsung.android.ipsgeofence","com.samsung.android.kidsinstaller","com.samsung.android.knox.analytics.uploader","com.samsung.android.knox.attestation","com.samsung.android.knox.containercore","com.samsung.android.knox.kpecore","com.samsung.android.knox.pushmanager","com.samsung.android.knox.zt.framework","com.samsung.android.mapsagent","com.samsung.android.mcfds","com.samsung.android.mcfserver","com.samsung.android.mdecservice","com.samsung.android.mdm","com.samsung.android.mdx","com.samsung.android.mdx.kit","com.samsung.android.messaging","com.samsung.android.mobileservice","com.samsung.android.mocca","com.samsung.android.mydevice","com.samsung.android.net.wifi.wifiguider","com.samsung.android.networkdiagnostic","com.samsung.android.privateaccesstokens","com.samsung.android.provider.filterprovider","com.samsung.android.rampart","com.samsung.android.rubin.app","com.samsung.android.samsungpass","com.samsung.android.samsungpassautofill","com.samsung.android.samsungpositioning","com.samsung.android.scloud","com.samsung.android.sdk.handwriting","com.samsung.android.sdm.config","com.samsung.android.server.wifi.mobilewips","com.samsung.android.service.peoplestripe","com.samsung.android.service.stplatform","com.samsung.android.service.tagservice","com.samsung.android.shortcutbackupservice","com.samsung.android.smartcallprovider","com.samsung.android.smartsuggestions","com.samsung.android.smartswitchassistant","com.samsung.android.spayfw","com.samsung.android.sskds","com.samsung.android.stickercenter","com.samsung.android.svcagent","com.samsung.android.themestore","com.samsung.android.video","com.samsung.android.vision.model","com.samsung.android.visionintelligence","com.samsung.android.visual.cloudcore","com.samsung.android.vtcamerasettings","com.samsung.android.wallpaper.live","com.samsung.app.newtrim","com.samsung.cmh","com.samsung.faceservice","com.samsung.gpuwatchapp","com.samsung.internal.systemui.navbar.gestural_no_hint","com.samsung.internal.systemui.navbar.sec_gestural","com.samsung.internal.systemui.navbar.sec_gestural_no_hint","com.samsung.ipservice","com.samsung.knox.securefolder","com.samsung.petservice","com.samsung.safetyinformation","com.samsung.sait.sohservice","com.samsung.storyservice","com.samsung.videoscan","com.sec.android.CcInfo","com.sec.android.RilServiceModeApp","com.sec.android.app.SecSetupWizard","com.sec.android.app.billing","com.sec.android.app.bluetoothagent","com.sec.android.app.camera","com.sec.android.app.chromecustomizations","com.sec.android.app.desktoplauncher","com.sec.android.app.factorykeystring","com.sec.android.app.hwmoduletest","com.sec.android.app.magnifier","com.sec.android.app.parser","com.sec.android.app.servicemodeapp","com.sec.android.app.setupwizardlegalprovider","com.sec.android.app.soundalive","com.sec.android.app.uwbtest","com.sec.android.app.ve.vebgm","com.sec.android.app.vepreload","com.sec.android.app.wlantest","com.sec.android.autodoodle.service","com.sec.android.daemonapp","com.sec.android.desktopmode.uiservice","com.sec.android.easyMover","com.sec.android.easyMover.Agent","com.sec.android.easyonehand","com.sec.android.gallery3d","com.sec.android.iaft","com.sec.android.llmpolicy","com.sec.android.mimage.avatarstickers","com.sec.android.mimage.photoretouching","com.sec.android.smartfpsadjuster","com.sec.android.widgetapp.easymodecontactswidget","com.sec.app.RilErrorNotifier","com.sec.bcservice","com.sec.enterprise.knox.cloudmdm.smdms","com.sec.epdgtestapp","com.sec.facatfunction","com.sec.factory.camera","com.sec.imslogger","com.sec.location.nfwlocationprivacy","com.sec.modem.settings","com.sec.phone","com.sec.spp.push","com.sec.unifiedwfc","com.sec.usbsettings","com.sec.vsim.ericssonnsds.webapp","com.sem.factoryapp","com.skms.android.agent","com.swiftkey.swiftkeyconfigurator","com.tencent.soter.soterserver","com.touchtype.swiftkey","com.wsomacp","org.ifaa.aidl.manager"]
```

## Other Useful ADB Commands

List users:
```
pm list user
```
List installed apps of user 0:
```
pm list packages --user 0
```
List installed apps and uninstalled system apps of user 0:
```
pm list packages -u --user 0
```
Grant write secure settings permission to the app of user 0:
```
pm grant --user 0 <package_name> android.permission.WRITE_SECURE_SETTINGS
```
On Android 14+, let persistent notifications posted by the app of user 0 not be dismissible through the UI (i.e. behave as they did prior to Android 14):
```
appops set --user 0 <package_name> SYSTEM_EXEMPT_FROM_DISMISSIBLE_NOTIFICATIONS allow
```
On Android 14+, let persistent notifications posted by the app of user 0 be dismissible through the UI:
```
appops set --user 0 <package_name> SYSTEM_EXEMPT_FROM_DISMISSIBLE_NOTIFICATIONS default
```
Let vibration by the app of user 0 be ignored:
```
appops set --user 0 <package_name> VIBRATE ignore
```
Let vibration by the app of user 0 be allowed:
```
appops set --user 0 <package_name> VIBRATE allow
```

## Other Useful ADB Command Combinations

List uninstalled system apps of user 0 (outside ADB shell, assuming that interactive ADB shell can be accessed with `rish`):
```
diff <(echo 'pm list packages --user 0 && exit' | rish) <(echo 'pm list packages -u --user 0 && exit' | rish) | grep '^>' | sed "s/> package://" | sort | uniq
```
On Android 14+, let persistent notifications posted by all apps of user 0 not be dismissible through the UI (i.e. behave as they did prior to Android 14):
```
for pkg in $(pm list packages --user 0 -f | sed "s/.*=//"); do
  appops set --user 0 "$pkg" SYSTEM_EXEMPT_FROM_DISMISSIBLE_NOTIFICATIONS allow
done
```
On Android 14+, let persistent notifications posted by all apps of user 0 be dismissible through the UI:
```
for pkg in $(pm list packages --user 0 -f | sed "s/.*=//"); do
  appops set --user 0 "$pkg" SYSTEM_EXEMPT_FROM_DISMISSIBLE_NOTIFICATIONS default
done
```

## Sources

This project refers a lot to the [`uad_lists.json`](https://raw.githubusercontent.com/Universal-Debloater-Alliance/universal-android-debloater-next-generation/main/resources/assets/uad_lists.json) of [Universal Android Debloater Next Generation](https://github.com/Universal-Debloater-Alliance/universal-android-debloater-next-generation) and [`uad_lists.json`](https://raw.githubusercontent.com/0x192/universal-android-debloater/refs/heads/main/resources/assets/uad_lists.json) from [Universal Android Debloater GUI](https://github.com/0x192/universal-android-debloater). A copy of the former is in [`Universal Android Debloater Next Generation/uad_lists.json`](Universal%20Android%20Debloater%20Next%20Generation/uad_lists.json), and a copy of the latter is in [`Universal Android Debloater GUI/uad_lists.json`](Universal%20Android%20Debloater%20GUI/uad_lists.json).
