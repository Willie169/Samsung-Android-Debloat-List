# Samsung Android Debloat List

This repo contains the list of apps I uninstalled on my Samsung Galaxy S24+ (SM-S9260) Android 16 One UI 8 device, and other settings, useful commands, etc. Even if you are not using Samsung phone, many parts of this repo still apply. For network connection configurations, which is also important for privacy, refer to my [**android-privacy-network-connection-configurations**](https://github.com/Willie169/android-privacy-network-connection-configurations) repo.

## Table of Contents

* [Usage](#usage)
* [Read Before Execution](#read-before-execution)
* [Disabled/Uninstalled](#disableduninstalled)
* [Not Disabled/Uninstalled](#not-disableduninstalled)
* [Non-ADB Settings](#non-adb-settings)
* [ADB Settings](#adb-settings)
* [Useful ADB Commands](#useful-adb-commands)
* [My Current Status](#my-current-status)
* [Credits](#credits)

## Usage

You can use ADB, on phone via [Shizuku](https://github.com/thedjchi/Shizuku) or adb pair on Termux or from a computer via [Android SDK Platform Tools](https://developer.android.com/tools/releases/platform-tools), or root, or other apps utilizing them, such as a terminal app with `rish` and `rish_shizuku.dex` provided by Shizuku, [Hail](https://github.com/aistra0528/Hail) with Shizuku, or [Canta](https://github.com/samolego/Canta) with Shizuku, on phone, or [Universal Android Debloater Next Generation](https://github.com/Universal-Debloater-Alliance/universal-android-debloater-next-generation) from a computer, to disable (`pm disable --user 0 <package_name>`), enable (`pm enable --user 0 <package_name>`), uninstall (`pm uninstall --user 0 <package_name>`), and reinstall (for system apps) (`pm install-existing --user 0 <package_name>`) apps.

Shizuku is an Android app that allows other apps to use system-level APIs that require ADB/root privileges. I recommend using [thedjchi's fork](https://github.com/thedjchi/Shizuku) fork and manage its installation using [Obtainium](https://github.com/ImranR98/Obtainium). Please visit the [official wiki](https://github.com/thedjchi/Shizuku/wiki) and [thedjchi's repo](https://github.com/thedjchi/Shizuku) for setup, info, troubleshooting steps, etc.

My debloat list and settings recommendations are aimed at
- increase system performance,
- decrease battery drain,
- enhance privacy,
- enhance security, and
- save space
without breaking the user experience.

The list is provided in five formats:
- Raw list: [raw.txt](https://raw.githubusercontent.com/Willie169/Samsung-Android-Debloat-List/refs/heads/main/raw.txt)
- ADB disable command: [disable.txt](https://raw.githubusercontent.com/Willie169/Samsung-Android-Debloat-List/refs/heads/main/disable.txt)
- ADB uninstall command: [uninstall.txt](https://raw.githubusercontent.com/Willie169/Samsung-Android-Debloat-List/refs/heads/main/uninstall.txt)
- Hail: [hail.txt](https://raw.githubusercontent.com/Willie169/Samsung-Android-Debloat-List/refs/heads/main/hail.txt)
- Canta: [canta.json](https://raw.githubusercontent.com/Willie169/Samsung-Android-Debloat-List/refs/heads/main/canta.json)

ADB disable and uninstall commands can be used directly in ADB shell. They assume user 0 by default, which can be changed to other user by changing the number after `--user`. work profile is typically user 10 or 11. Make changes if you want. Reboot your phone after execution. If any app you disabled/uninstalled is back automatically, disable/uninstall them and reboot again. If they persist, it's probably for a reason and I suggest to leave them there.

Hail format can be used in [Hail](https://github.com/aistra0528/Hail) (`com.aistra.hail`) from [F-Droid](https://f-droid.org/packages/com.aistra.hail) to disable apps. The steps are as follows:
1. Start Shizuku.
2. Copy the content of [hail.txt](https://raw.githubusercontent.com/Willie169/Samsung-Android-Debloat-List/refs/heads/main/hail.txt).
2. Make changes if you want.
2. Open Hail, go to `Settings > Work mode` and select `Shizuku - Disable`.
2. Click `Allow all the time` in `Allow Hail to access Shizuku` pop-up.
2. Go to `Home`, click three dots at the top right corner, click `Import app > Import from Clipboard`.
2. Reboot your phone after execution. If any app you disabled is back automatically, disable them and reboot again. If they persist, it's probably for a reason and I suggest to leave them there.

Canta format can be used in [Canta](https://github.com/samolego/Canta) (`io.github.samolego.canta`) from [F-Droid](https://f-droid.org/packages/io.github.samolego.canta) to uninstall apps. The steps are as follows:
1. Start Shizuku.
2. Copy the content of [canta.json](https://raw.githubusercontent.com/Willie169/Samsung-Android-Debloat-List/refs/heads/main/canta.json).
2. Make changes if you want.
2. Open Canta, go to `3 dots > Presets > Import preset > Import from Clipboard`.
2. Click `Apply Preset` under `Samsung Android Debloat List`.
2. Pull down to reload.
2. Dropdown `Selected apps` on the top.
2. Click the trash bin icon at the bottom-right corner.
2. Click `Grant permission to Canta in Shizuku`.
2. Click `Allow all the time` in `Allow Canta to access Shizuku` pop-up.
2. Click `Ok`.
2. Reboot your phone after execution. If any app you uninstalled is back automatically, uninstall them and reboot again. If they persist, it's probably for a reason and I suggest to leave them there.

User apps are not listed here since it can be disabled/uninstalled normally. You can use `Settings > Apps`, Hail, `pm list packages`, or other tools to list them and then disable/uninstall what you want to disable/uninstall.

Go to [Non-ADB Settings](#non-adb-settings) and [ADB Settings](#adb-settings) section for some recommended settings.

## Read Before Execution

**Use at your own risk. I, as well as all projects mentioned or used in this guide, am not responsible for any data loss, boot loop, bricking, or any other damage caused by following this guide or doing other operations due to or related to the guide. This project is licensed under GPL 3.0. See [LICENSE.txt](LICENSE.txt) for the legal code.**

- Disabling/uninstalling `com.samsung.android.wifi.softap.resources` may cause mobile data and/or mobile hotspot to fail, so it is not disabled/uninstalled in the list.
- Disabling/uninstalling Samsung Cloud Assistant (`com.samsung.android.scpm`) may cause Sound quality and effects (`com.sec.android.app.soundalive`) to crash. Both are disabled/uninstalled in the list. If you use Sound quality and effects, enable both of them.
- Disabling/uninstalling DiagMonAgent (`com.sec.android.diagmonagent`) may cause crashes, so they are not disabled/uninstalled in the list.
- Disabling/uninstalling NFC Service (`com.android.nfc`), Find My Mobile (`com.samsung.android.fmm`), or Samsung Account (`com.osp.app.signin`) may fail or cause crashes, so they are not disabled/uninstalled in the list.
- Disabling/uninstalling Samsung Location SDK (`com.sec.location.nsflp2`) will cause GPS location not be able to be recieved, so it is not disabled/uninstalled in the list.
- Disabling/uninstalling Samsung Wallet Digital Key (`com.samsung.android.dkey`) may cause increase in background resources usage, so it is not disabled/uninstalled in the list.
- Disabling/uninstalling Smart View (`com.samsung.android.smartmirroring`) may cause One UI Home (`com.sec.android.app.launcher`) and/or Video Player (`com.samsung.android.video`) to crash, so it is not disabled/uninstalled in the list.
- CameraExtensionsProxy (`com.android.cameraextensions`) is needed for some camera apps, so it is not disabled/uninstalled in the list.
- Print Spooler (`com.android.printspooler`) is needed for Save as PDF in Print, so it is not disabled/uninstalled in the list.
- Smart capture (`com.samsung.android.app.smartcapture`) is needed for screenshot notification, some screen recording functionalities, and screen mirroring (e.g. [scrcpy](https://github.com/Genymobile/scrcpy)), so it is not disabled/uninstalled in the list.
- TalkBack (`com.samsung.android.accessibility.talkback`) is needed for Text-to-speech settings, so it is not disabled/uninstalled in the list.
- Work Setup (`com.android.managedprovisioning`) is needed for work profile managing apps such as [Insular](https://gitlab.com/secure-system/Insular) (`com.oasisfeng.island.fdroid`) from [F-Droid](https://f-droid.org/packages/com.oasisfeng.island.fdroid) and [Shelter](https://gitea.angry.im/PeterCxy/Shelter) (`net.typeblog.shelter`) from [F-Droid](https://droidify.app/app/?id=net.typeblog.shelter&repo_address=https://fdroid.typeblog.net), so it is not disabled/uninstalled in the list.
- `com.android.backupconfirm` is needed for ADB backup, so it is not disabled/uninstalled in the list.
- Both Google Messages (`com.google.android.apps.messaging`), ContactKeys Storage (`com.android.providers.contactkeys`) and Samsung Messages (`com.samsung.android.messaging`) are disabled/uninstalled in the list because I'm using [Fossify Messages](https://github.com/FossifyOrg/Messages) (`org.fossify.messages`) from [F-Droid](https://f-droid.org/packages/org.fossify.messages). Enable/install one of them if you use them.
- Camera (`com.sec.android.app.camera`) and Filter Provider (`com.samsung.android.provider.filterprovider`) are disabled/uninstalled in the list because I'm using [Open Camera](https://sourceforge.net/p/opencamera/code) (`net.sourceforge.opencamera`) from [F-Droid](https://f-droid.org/packages/net.sourceforge.opencamera) and [QR Scanner (PFA)](https://github.com/SecUSo/privacy-friendly-qr-scanner) from [F-Droid](https://f-droid.org/packages/com.secuso.privacyFriendlyCodeScanner). Enable/install them if you use stock Camera. Note that if you disable/uninstall Filter Provider and still use the stock Camera, it may crash.
- Contacts (`com.samsung.android.app.contacts`) and Choose a picture (`com.android.avatarpicker`) is disabled/uninstalled in the list because I'm using [Fossify Contacts](https://github.com/FossifyOrg/Contacts) (`org.fossify.contacts`) from [F-Droid](https://f-droid.org/packages/org.fossify.contacts). Enable/install it if you use it.
- Gallery (`com.sec.android.gallery3d`), Gallery (`com.samsung.android.widget.pictureframe`), Gallery stories (`com.samsung.storyservice`), CMHProvider (`com.samsung.cmh`), FaceService (`com.samsung.faceservice`), Editor Lite (`com.samsung.app.newtrim`), Galaxy editing service (`com.samsung.android.globalpostprocmgr`), and Photo Editor (`com.sec.android.mimage.photoretouching`) are disabled/uninstalled in the list because I'm using [Fossify Gallery](https://github.com/FossifyOrg/Gallery) (`org.fossify.gallery`) from [F-Droid](https://f-droid.org/packages/org.fossify.gallery), and [Image Toolbox](https://github.com/T8RIN/ImageToolbox) (`ru.tech.imageresizershrinker`) from [F-Droid](https://apt.izzysoft.de/fdroid/index/apk/ru.tech.imageresizershrinker). Note that disabling/uninstalling them will make you unable to preview photos in Camera (`com.sec.android.app.camera`). Enable/install them if you need.
- NFC (`com.samsung.android.nfc`) is disabled/uninstalled in the list. Enable it if you use NFC.
- If you are using Gestural Navigation Bar (i.e., swipe gestures), do not disable or uninstall Gestural Navigation Bar (`com.samsung.internal.systemui.navbar.gestural`), Gestural Navigation Bar (`com.samsung.internal.systemui.navbar.sec_gestural_no_hint`), Gestural Navigation Bar (`com.samsung.internal.systemui.navbar.sec_gestural`), Gestural Navigation Bar (`com.samsung.internal.systemui.navbar.sec_gestural_no_hint`). If you are using 3 Button Navigation Bar, do not disable or uninstall 3 Button Navigation Bar (`com.android.internal.systemui.navbar.threebutton`). They are all not disabled/uninstalled in the list.
- Phone (`com.samsung.android.dialer`) is disabled/uninstalled in the list because I'm using [Fossify Phone](https://github.com/FossifyOrg/Phone) (`org.fossify.phone`) from [F-Droid](https://f-droid.org/packages/org.fossify.phone). Enable/install it if you use it.
- Speech Recognition and Synthesis from Google (`com.google.android.tts`), Samsung text-to-speech engine (`com.samsung.SMT`), and the voices pre-installed on my phone, SamsungTTS US English Voice 1 (`com.samsung.SMT.lang_en_us_l03`), SamsungTTS 简体中文 语音 1 (`com.samsung.SMT.lang_zh_cn_l02`), SamsungTTS Cantonese Voice 1 (`com.samsung.SMT.lang_zh_hk_f00`), SamsungTTS Taiwanese Mandarin Voice 1 (`com.samsung.SMT.lang_zh_tw_f00`), are disabled/uninstalled in the list because I use [SherpaTTS](https://github.com/woheller69/ttsEngine) (`org.woheller69.ttsengine`) from [F-Droid](https://f-droid.org/packages/org.woheller69.ttsengine). Enable/install Samsung text-to-speech engine and the voices you want if you use them. Pre-installed voices differ across regions and all start with `com.samsung.SMT.lang_` , you can disable them with the ADB command:
  ```
  for pkg in $(pm list packages --user 0 | grep 'package:com.samsung.SMT.lang_' | sed 's/^package://'); do
    pm disable --user 0 $pkg
  done
  ```
  or uninstall them with the ADB command:
  ```
  for pkg in $(pm list packages --user 0 | grep 'package:com.samsung.SMT.lang_' | sed 's/^package://'); do
    pm uninstall --user 0 $pkg
  done
  ```
- See [Disabled/Uninstalled](#disabled-uninstalled) for a non-exhaustive list of apps disabled/uninstalled in the list that you may want to preserve and my recommended alternatives. See [Not Disabled/Uninstalled](#not-disabled-uninstalled) for a non-exhaustive list of apps not disabled/uninstalled in the list that you may want to disable/uninstall and my recommended alternatives. Those already listed in this section are not listed again in those lists. I recommend using [Droid-fy](https://github.com/Droid-ify/client) (`com.looker.droidify`) from [F-Droid](https://f-droid.org/packages/com.looker.droidify) to install apps from F-Droid repositories (hereafter referred to as F-Droid), [FFUpdater](https://github.com/Tobi823/ffupdater) to install open source browsers, and using [Obtainium](https://github.com/ImranR98/Obtainium) (`dev.imranr.obtainium.fdroid`) to install apps from other sources such as GitHub release. For people who don't login to a Google account, I recommend using [Aurora Store](https://gitlab.com/AuroraOSS/AuroraStore) (`com.aurora.store`) from [F-Droid](https://f-droid.org/packages/com.aurora.store) to install apps from Google Play Store.
- Visit my [Android-Non-Root](https://github.com/Willie169/Android-Non-Root) for more Android guides and [browser-privacy-guide](https://github.com/Willie169/browser-privacy-guide) for more browser guides.

## Disabled/Uninstalled

This is a non-exhaustive list of apps disabled/uninstalled in the list that you may want to preserve and my recommended alternatives.

- Android Switch (`com.google.android.apps.restore`)
- Android System Intelligence (`com.google.android.as`)
- AudioMirroring (`com.samsung.android.audiomirroring`)
- Bixby (`com.samsung.android.bixby.agent`), Bixby Vision (`com.samsung.android.visionintelligence`), BixbyVision Framework (`com.samsung.android.bixbyvision.framework`), and Voice wake-up (`com.samsung.android.bixby.wakeup`)
- Digital Wellbeing (`com.samsung.android.forest`): [Mindful](https://github.com/akaMrNagar/Mindful) (`com.mindful.android`).
- Drawing assist (`com.samsung.android.app.sketchbook`)
- Dynamic System Updates (`com.android.dynsystem`): Since it's not usable on this device after all.
- Galaxy Store (`com.sec.android.app.samsungapps`): Since it requires a Samsung account. You can download and install Samsung apps from [APKMirror](https://www.apkmirror.com).
- Galaxy Themes (`com.samsung.android.themestore`)
- Game Booster (`com.samsung.android.game.gametools`)
- Gemini (`com.google.android.apps.bard`): [Gemini website](https://gemini.google.com/app) with browser's "Add to Home screen".
- Gmail (`com.google.android.gm`): [Thunderbird](https://github.com/thunderbird/thunderbird-android) (`net.thunderbird.android`) from [FFUpdater](https://github.com/Tobi823/ffupdater) (recommended) or [F-Droid](https://f-droid.org/packages/net.thunderbird.android), [Proton Mail](https://github.com/ProtonMail/android-mail) (`ch.protonmail.android`) from [GitHub release](https://github.com/ProtonMail/android-mail/releases) (recommended) or [Google Play Store](https://play.google.com/store/apps/details?id=ch.protonmail.android), [Tuta Mail](https://github.com/tutao/tutanota) (`de.tutao.tutanota`) from [F-Droid](https://f-droid.org/packages/de.tutao.tutanota).
- Google Location History (`com.google.android.gms.location.history`)
- Hey Google Hotword (`com.android.hotwordenrollment.xgoogle`) and OK Google Hotword (`com.android.hotwordenrollment.okgoogle`)
- Interpreter (`com.samsung.android.app.interpreter`)
- Link to Windows (`com.microsoft.appmanager`) and Link to Windows Service (`com.samsung.android.mdx`): [RustDesk](https://github.com/rustdesk/rustdesk) (`com.carriez.flutter_hbb`) from [F-Droid](https://f-droid.org/packages/com.carriez.flutter_hbb).
- Live Transcribe & Sound Notifications (`com.google.audio.hearing.visualization.accessibility.scribe`): This is not done on-device for non-Pixel Android devices according to [THE NEW OIL's Mobile Devices: Settings](https://thenewoil.org/en/guides/most-important/mobile-settings).
- Meet (`com.google.android.apps.tachyon`)
- Meta App Installer (`com.facebook.system`), Meta App Manager (`com.facebook.appmanager`), and Meta Services (`com.facebook.services`): Disabling them won't affect Facebook (`com.facebook.katana`), Messenger (`com.facebook.orca`), or any other app.
- Microsoft SwiftKey Keyboard (`com.touchtype.swiftkey`) and Microsoft SwiftKey Factory Settings (`com.swiftkey.swiftkeyconfigurator`): I'm using GBoard (`com.google.android.inputmethod.latin`) from [Google Play Store](https://play.google.com/store/apps/details?id=com.google.android.inputmethod.latin) and disable its internet access from TrackerControl.
- Modes and Routines (`com.samsung.android.app.routines`)
- Neayby Service (`com.samsung.android.allshare.service.mediashare`), Nearby devices (`com.samsung.android.mydevice`), Nearby device scanning (`com.samsung.android.easysetup`), Nearby device scanning agent (`com.samsung.android.beaconmanager`)
- OneDrive (`com.microsoft.skydrive`)
- PrintSpooler (`com.android.printspooler`)
- ProxyHandler (`com.android.proxyhandler`)
- Quick Share (`com.samsung.android.app.sharelive`), Quick Share Agent (`com.samsung.android.aware.service`), Quick Share Connectivity (`com.samsung.android.mdx.kit`): [LocalSend](https://github.com/localsend/localsend) (`org.localsend.localsend_app`) from [F-Droid](https://f-droid.org/packages/org.localsend.localsend_app).
- Samsung Cloud (`com.samsung.android.scloud`)
- Samsung DeX Home (`com.sec.android.app.desktoplauncher`) and Samsung DeX (`com.sec.android.desktopmode.uiservice`)
- Samsung Pass (`com.samsung.android.samsungpass`) and Autofill with Samsung Pass (`com.samsung.android.samsungpassautofill`): [Bitwarden](https://github.com/bitwarden/android) (`com.x8bit.bitwarden`) from [F-Droid](https://droidify.app/app/?id=com.x8bit.bitwarden&repo_address=https://mobileapp.bitwarden.com/fdroid/repo).
- Samsung PaymentFramework (`com.samsung.android.spayfw`), `com.samsung.android.knox.mpos`
- Secure Folder (`com.samsung.knox.securefolder`)
- Smart Call (`com.samsung.android.smartcallprovider`) and Hiya Service (`com.hiya.star`)
- Smart Switch (`com.sec.android.easyMover`), and Smart Switch Agent (`com.sec.android.easyMover.Agent`)
- SmartThings Companion (`com.samsung.android.service.stplatform`)
- Studio (`com.sec.android.app.vepreload`): [Miniter](https://github.com/mlm-games/Miniter) (`org.mlm.miniter`) from [F-Droid](https://f-droid.org/packages/org.mlm.miniter).
- Tags (`com.android.apps.tag`)
- TalkBack (`com.samsung.android.accessibility.talkback`)
- Tasks (`com.samsung.android.app.taskedge`) and People (`com.samsung.android.service.peoplestripe`) of Edge panels
- Terminal (`com.android.virtualization.terminal`): Since it's not usable on this device after all.
- Video Player (`com.samsung.android.video`): [VLC](https://code.videolan.org/videolan/vlc-android) (`org.videolan.vlc`) from [F-Droid](https://f-droid.org/packages/org.videolan.vlc).
- Voice Access (`com.google.android.apps.accessibility.voiceaccess`)
- Weather (`com.sec.android.daemonapp`): [Weather](https://github.com/breezy-weather/breezy-weather) (`org.breezyweather`) from [F-Droid](https://f-droid.org/packages/org.breezyweather).
- WiFi Calling (`com.sec.unifiedwfc`)
- YouTube (`com.google.android.youtube`): [PipePipe](https://github.com/InfinityLoop1308/PipePipe) (`InfinityLoop1309.NewPipeEnhanced`) from [GitHub release](https://github.com/InfinityLoop1308/PipePipe/releases) (recommended due to frequent updates) or [F-Droid](https://f-droid.org/packages/InfinityLoop1309.NewPipeEnhanced), [Morphe Manager](https://github.com/MorpheApp/morphe-manager) (`app.morphe.manager`) from [GitHub release](https://github.com/MorpheApp/morphe-manager/releases) patched YouTube with [MicroG-RE](https://github.com/MorpheApp/MicroG-RE) (`app.revanced.android.gms`) from [GitHub release](https://github.com/MorpheApp/MicroG-RE/releases).

## Not Disabled/Uninstalled

This is a non-exhaustive list of apps not disabled/uninstalled in the list that you may want to disable, reasons, and my recommended alternatives. User apps are not listed here since they are all safe to disable/uninstall.

- Adapt sound (`com.sec.hearingadjust`)
- Basic Daydreams (`com.android.dreams.basic`): This is not Google Daydream VR but an interactive screen saver mode.
- Chrome (`com.android.chrome`): [Fennec F-Droid](https://gitlab.com/relan/fennecbuild) from [F-Droid](https://f-droid.org/packages/org.mozilla.Fennec F-Droid_fdroid) or [FFUpdater](https://github.com/Tobi823/ffupdater), [Firefox](https://github.com/mozilla-mobile/firefox-android) (`org.mozilla.firefox`) from [FFUpdater](https://github.com/Tobi823/ffupdater) (recommended) or [Google Play Store](https://play.google.com/store/apps/details?id=org.mozilla.firefox), [Brave](https://github.com/brave/brave-browser) (`com.brave.browser`) [FFUpdater](https://github.com/Tobi823/ffupdater) (recommended) or [Google Play Store](https://play.google.com/store/apps/details?id=com.brave.browser), [Chromite ](https://github.com/uazo/cromite) (`org.cromite.cromite`) from [FFUpdater](https://github.com/Tobi823/ffupdater) (recommended) or [F-Droid](https://droidify.app/app/?id=org.cromite.cromite&repo_address=https://www.cromite.org/fdroid/repo), [Tor Browser](https://gitlab.torproject.org/tpo/applications/tor-browser) from FFUpdater, [Google Play Store](https://play.google.com/store/apps/details?id=org.torproject.torbrowser), or [F-Droid](https://droidify.app/app/?id=org.torproject.torbrowser&repo_address=https://guardianproject.info/fdroid/archive).
- Edge panels, Clipboard edge (`com.samsung.android.app.clipboardedge`), Tools (`com.sec.android.app.quicktool`), and Samsung Keyboard (`com.samsung.android.honeyboard`) (Clipboard edge depends on Samsung Keyboard): [SmartEdge](https://github.com/Imtiaz-Official/Smart-Edge) (`com.imi.smartedge.sidebar.panel`) from [F-Droid](https://f-droid.org/packages/com.imi.smartedge.sidebar.panel) or [GitHub release](https://github.com/Imtiaz-Official/Smart-Edge/releases) (recommended due to frequent updates), [Glide](https://github.com/dagimg-dot/Glide) (`com.dagimg.glide`) from [GitHub release](https://github.com/dagimg-dot/Glide/releases), GBoard (`com.google.android.inputmethod.latin`) from [Google Play Store](https://play.google.com/store/apps/details?id=com.google.android.inputmethod.latin).
- Eye comfort shield (`com.samsung.android.bluelightfilter`)
- Google (`com.google.android.googlequicksearchbox`): [CircleToSearch](https://github.com/AKS-Labs/CircleToSearch) (`com.akslabs.circletosearch`) from [GitHub release](https://github.com/AKS-Labs/CircleToSearch/releases) or [F-Droid](https://f-droid.org/packages/com.akslabs.circletosearch), [Fennec F-Droid](https://gitlab.com/relan/fennecbuild) from [F-Droid](https://f-droid.org/packages/org.mozilla.Fennec F-Droid_fdroid) or [FFUpdater](https://github.com/Tobi823/ffupdater), [Firefox](https://github.com/mozilla-mobile/firefox-android) (`org.mozilla.firefox`) from [FFUpdater](https://github.com/Tobi823/ffupdater) (recommended) or [Google Play Store](https://play.google.com/store/apps/details?id=org.mozilla.firefox), [Brave](https://github.com/brave/brave-browser) (`com.brave.browser`) [FFUpdater](https://github.com/Tobi823/ffupdater) (recommended) or [Google Play Store](https://play.google.com/store/apps/details?id=com.brave.browser), [Chromite ](https://github.com/uazo/cromite) (`org.cromite.cromite`) from [FFUpdater](https://github.com/Tobi823/ffupdater) (recommended) or [F-Droid](https://droidify.app/app/?id=org.cromite.cromite&repo_address=https://www.cromite.org/fdroid/repo), [Tor Browser](https://gitlab.torproject.org/tpo/applications/tor-browser) from FFUpdater, [Google Play Store](https://play.google.com/store/apps/details?id=org.torproject.torbrowser), or [F-Droid](https://droidify.app/app/?id=org.torproject.torbrowser&repo_address=https://guardianproject.info/fdroid/archive).
- Google Play Store Store (`com.android.vending`): [Aurora Store](https://gitlab.com/AuroraOSS/AuroraStore) (`com.aurora.store`) from [F-Droid](https://f-droid.org/packages/com.aurora.store). Do not disable or uninstall it in personal profile if work profile still uses it.
- Maps (`com.google.android.apps.maps`): [OsmAnd~ / OsmAnd+](https://github.com/osmandapp/OsmAnd) (`net.osmand.plus`) from [F-Droid](https://droidify.app/app/?id=net.osmand.plus&repo_address=https://guardianproject-wind.s3.amazonaws.com/fdroid/repo), [Google Maps website](https://www.google.com/maps) with browser's "Add to Home screen", [GMaps WV](https://github.com/woheller69/maps) (`us.spotco.maps`) from [F-Droid](https://f-droid.org/packages/us.spotco.maps>), [osm2gmaps](https://codeberg.org/retiolus/osm2gmaps) (`net.retiolus.osm2gmaps`) from [F-Droid](https://f-droid.org/packages/net.retiolus.osm2gmaps), [Google Maps Unshortener website](https://mapu.retiolus.net).
- My Files (`com.sec.android.app.myfiles`): [Amaze File Manager](https://github.com/TeamAmaze/AmazeFileManager) from [F-Droid](https://f-droid.org/packages/com.amaze.filemanager), [Material Files](https://github.com/zhanghai/MaterialFiles) from [F-Droid](https://f-droid.org/packages/me.zhanghai.android.files).

## Non-ADB Settings

Set the following items in settings. Note that some of them need to be set for work profile separately if you have work profile, such as those under Google.
- Do not login to Samsung account.
- Connections > Wi-Fi > Advanced settings > Manage networks: Remove old networks you no longer use.
- Connections > Wi-Fi > Advanced settings > Allow WEP networks: Disabled
- Connections > Bluetooth: Disabled when not in use
- Connections > NFC and contactless payments: Disabled when not in use
- Connections > Ultra-wideband (UWB): Disabled when not in use
- Connections > More connection settings > Private DNS > Private DNS provider hostname: A trusted DNS provider, such as `security.cloudflare-dns.com`. If you are using DNS proxy, VPN, or other approaches to manage DNS resolving, ignore this. Note that setting this will interfere some VPN apps, and this settings is for the whole device instead of one profile. For my setup, refer to my [**android-privacy-network-connection-configurations**](https://github.com/Willie169/android-privacy-network-connection-configurations) repo.
- Connected devices > Quick Share > Who can share with you: Off, Your devices, or Contacts
- Connected devices > Music Share: Disabled when not in use
- Galaxy AI: Disabled.
- Notifications > App notifications: Disable on apps you don't need real-time notifications from.
- Notifications > Lock screen: Disabled.
- Notifications > Advanced settings > Notification history: Disabled. If you want notification history, use [NotificationLog](https://codeberg.org/jonas-l/notificationlog-android) (`de.jl.notificationlog`) from [F-Droid](https://f-droid.org/packages/de.jl.notificationlog).
- Display > Screen saver: Do not set to picture that may reveal something about you.
- Wallpaper and style: Do not set your lock screen to picture that may reveal something about you.
- Lock screen & AOD > Screen lock and biometrics: Set a strong password and/or use fingerprint depending on your threat model and preference.
- Lock screen & AOD > Now bar: Disable all apps in Live notifications that may reveal something about you.
- Security and privacy > Lost device protection > Theft protection > Theft detection lock: Enabled
- Security and privacy > Lost device protection > Theft protection > Offline device lock: Enabled
- Security and privacy > More security settings > Certificate management app: Should be None.
- Security and privacy > More security settings > Install unknown apps: Only apps you trust.
- Security and privacy > More security settings > Device admin apps: Only apps you trust.
- Security and privacy > More privacy settings > Send diagnostic data: Disabled
- Security and privacy > More privacy settings > Android personalization service: Disabled
- Security and privacy > More privacy settings > Data sharing updates for location: Revoke unncessary apps.
- Security and privacy > More privacy settings > Permission manager: Check each permission and revoke all unncessary permissions. I recommend using [Permission Pilot](https://github.com/d4rken-org/permission-pilot) (`eu.darken.myperm`) from [F-Droid](https://f-droid.org/packages/eu.darken.myperm) and go to its settings > Permission Watcher > Enable watcher to detect permission changes and notify you.
- Security and privacy > More privacy settings > Android System Intelligence > Keyboard > Show smart text suggestion in the keyboard suggestion strip: Disabled. Android System Intelligence is disabled/uninstalled in the list. If you've disabled/uninstalled it, the settings may not show.
- Security and privacy > More privacy settings > Android System Intelligence > Clear data > All time: Clear data. Android System Intelligence is disabled/uninstalled in the list. If you've disabled/uninstalled it, the settings may not show.
- Security and privacy > More privacy settings > Activity controls: Review settings.
- Security and privacy > More privacy settings > Ads > Delete advertising ID
- Security and privacy > More privacy settings > Usage & diagonstics: Disabled
- Location > Location services > turn off Google Location Sharing, Location Accuracy, Timeline, Wi-Fi scanning, and Bluetooth scanning: They are battery-consuming and/or may have privacy concerns depending on your threat model. You can enable Location Accuracy, Wi-Fi scanning, and/or Bluetooth scanning temporarily when using map apps to improve accuracy if your threat model is okay with it. If you don't need location, disable Location. If you don't need location in work profile, disable Location for work profile.
- Google > All services > Ads > Delete advertising ID
- Google > All services > Location Accuracy: Disabled
- Google > All services > Personalize using shared data: Disable all
- Google > All services > Quick Share > Who can share with you: Off, Your devices, or Contacts
- Google > All services > System services > Uninstall those you don't need.
- Google > All services > Usage & diagnostics: Disabled
- Google > All services > Connected apps: Review apps.
- Apps: Uninstall or disable apps you don't use.
- Apps > 3 dots > Special access: Disable permissions you don't need. I recommend using [Permission Pilot](https://github.com/d4rken-org/permission-pilot) (`eu.darken.myperm`) from [F-Droid](https://f-droid.org/packages/eu.darken.myperm) and go to its settings > Permission Watcher > Enable watcher to detect permission changes and notify you.
- Accessibility > TalkBack > Settings > Text-to-speech > Preferred engine: I recommend using [SherpaTTS](https://github.com/woheller69/ttsEngine) (`org.woheller69.ttsengine`) from [F-Droid](https://f-droid.org/packages/org.woheller69.ttsengine) or [Translator / Offline Translator](https://github.com/DavidVentura/offline-translator) (`dev.davidv.translator`) from [F-Droid](https://f-droid.org/packages/dev.davidv.translator). They don't collect your data and use Piper or Coqui voices, which I think is of better quality than Speech Recognition and Synthesis from Google (`com.google.android.tts`) and Samsung text-to-speech engine (`com.samsung.SMT`).
- Accessibility > Installed apps > Review apps.

## ADB Settings

Here's some recommended ADB settings, which can be run in ADB shell.

If Android Setup (`com.google.android.setupwizard`) sends a notification about completing setup, run the following inside ADB shell to turn it off:
```
settings put global setup_wizard_has_run 1
settings put secure user_setup_complete 1
settings put global device_provisioned 1
```
Fix Android VPN leak (need reboot):
```
device_config put tethering close_quic_connection -1
```
Improve touchscreen response behaviors (you may set them to other values):
```
settings put secure long_press_timeout 250
settings put secure multi_press_timeout 250
settings put secure tap_duration_threshold 0.0
settings put secure touch_blocking_period 0.0
```
Disable screen share protections for apps and notification:
```
settings put global disable_screen_share_protections_for_apps_and_notifications 1
```
Disable phantom process killer to resolve `Process completed (signal 9) - press Enter` error: See <https://willie169.github.io/Android-Non-Root/#process-completed-signal-9---press-enter-error> for more information.
```
/system/bin/device_config set_sync_disabled_for_tests persistent
/system/bin/device_config put activity_manager max_phantom_processes 2147483647
settings put global settings_enable_monitor_phantom_procs false
```
Misc:
```
settings put global activity_starts_logging_enabled 0
settings put global bixby_pregranted_permissions 0
settings put secure game_bixby_block 1
settings put secure send_action_app_error 0
settings put system rakuten_denwa 0
settings put system remote_control 0
settings put system send_security_reports 0
```

## Useful ADB Commands

Run in ADB shell.

List users:
```
pm list user
```
List installed apps of user 0:
```
pm list packages --user 0
```
List installed apps of user 0 and their associated APK files:
```
pm list packages -f --user 0
```
List disabled apps of user 0:
```
pm list packages -d --user 0
```
List enabled apps of user 0:
```
pm list packages -e --user 0
```
List system apps of user 0:
```
pm list packages -s --user 0
```
List user apps of user 0:
```
pm list packages -3 --user 0
```
List installed apps and uninstalled system apps of user 0:
```
pm list packages -u --user 0
```
List installed apps of user 0 and their installers:
```
pm list packages -f --user 0
```
Grant write secure settings permission to an app of user 0:
```
pm grant --user 0 <package_name> android.permission.WRITE_SECURE_SETTINGS
```
On Android 14+, let persistent notifications posted by an app of user 0 not be dismissible through the UI (i.e. behave as they did prior to Android 14):
```
appops set --user 0 <package_name> SYSTEM_EXEMPT_FROM_DISMISSIBLE_NOTIFICATIONS allow
```
On Android 14+, let persistent notifications posted by an app of user 0 be dismissible through the UI:
```
appops set --user 0 <package_name> SYSTEM_EXEMPT_FROM_DISMISSIBLE_NOTIFICATIONS default
```
Let vibration by an app of user 0 be ignored:
```
appops set --user 0 <package_name> VIBRATE ignore
```
Let vibration by an app of user 0 be allowed:
```
appops set --user 0 <package_name> VIBRATE allow
```
On Android 14+, let persistent notifications posted by all apps of user 0 not be dismissible through the UI (i.e. behave as they did prior to Android 14) (run in ADB shell):
```
for pkg in $(pm list packages --user 0 -f | sed "s/.*=//"); do
  appops set --user 0 "$pkg" SYSTEM_EXEMPT_FROM_DISMISSIBLE_NOTIFICATIONS allow
done
```
On Android 14+, let persistent notifications posted by all apps of user 0 be dismissible through the UI (run in ADB shell):
```
for pkg in $(pm list packages --user 0 -f | sed "s/.*=//"); do
  appops set --user 0 "$pkg" SYSTEM_EXEMPT_FROM_DISMISSIBLE_NOTIFICATIONS default
done
```
List uninstalled system apps of user 0: Run outside ADB shell, assuming specific diff versions and that interactive ADB shell can be accessed with `rish`.
```
diff -U 0 <(echo 'pm list packages --user 0 && exit' | rish | sort) <(echo 'pm list packages -u --user 0 && exit' | rish | sort) | sed 's/^\+\+\+//' | grep '^+' | sed 's/^\+package://' | sort | uniq
```
Compare uninstalled system apps of user 0 to raw.txt: Run outside ADB shell, assuming specific diff versions and that interactive ADB shell can be accessed with `rish`.
```
diff -U 0 <(diff -U 0 <(echo 'pm list packages --user 0 && exit' | rish | sort) <(echo 'pm list packages -u --user 0 && exit' | rish | sort) | sed 's/^\+\+\+//' | grep '^+' | sed 's/^\+package://' | sort | uniq) raw.txt
```

## My Current Status

My current status is as follows:
- Not rooted.
- [Shizuku](https://github.com/thedjchi/Shizuku) constantly on.
- Uninstalled all apps in the list in this guide.
- Applied [Non-ADB Settings](#non-adb-settings) and [ADB Settings](#adb-settings).
- Uninstalled Chrome (`com.android.chrome`), Google (`com.google.android.googlequicksearchbox`), and Maps (`com.google.android.apps.maps`) in personal profile.
- Don't login to Google account in personal profile and use [Aurora Store](https://gitlab.com/AuroraOSS/AuroraStore) (`com.aurora.store`) from [F-Droid](https://f-droid.org/packages/com.aurora.store) to install apps from Google Play Store in it.
- Browser: [Fennec F-Droid](https://gitlab.com/relan/fennecbuild) from [F-Droid](https://f-droid.org/packages/org.mozilla.Fennec F-Droid_fdroid) or [FFUpdater](https://github.com/Tobi823/ffupdater), [Firefox](https://github.com/mozilla-mobile/firefox-android) (`org.mozilla.firefox`) from [FFUpdater](https://github.com/Tobi823/ffupdater) (recommended) or [Google Play Store](https://play.google.com/store/apps/details?id=org.mozilla.firefox), [Brave](https://github.com/brave/brave-browser) (`com.brave.browser`) [FFUpdater](https://github.com/Tobi823/ffupdater) (recommended) or [Google Play Store](https://play.google.com/store/apps/details?id=com.brave.browser), [Chromite ](https://github.com/uazo/cromite) (`org.cromite.cromite`) from [FFUpdater](https://github.com/Tobi823/ffupdater) (recommended) or [F-Droid](https://droidify.app/app/?id=org.cromite.cromite&repo_address=https://www.cromite.org/fdroid/repo). Refer to my [browser-privacy-guide](https://github.com/Willie169/browser-privacy-guide).
- Network: Refer to my [**android-privacy-network-connection-configurations**](https://github.com/Willie169/android-privacy-network-connection-configurations) repo.
- Social media:
  - BiliBili: [PipePipe](https://github.com/InfinityLoop1308/PipePipe) (`InfinityLoop1309.NewPipeEnhanced`) from [GitHub release](https://github.com/InfinityLoop1308/PipePipe/releases) (recommended due to frequent updates) or [F-Droid](https://f-droid.org/packages/InfinityLoop1309.NewPipeEnhanced).
  - Discord: [Discord website](https://discord.com/channels/@me).
  - Facebook: [Facebook website](https://www.facebook.com).
  - Instagram: [Instagram website](https://www.instagram.com).
  - Mastodon: [Mastodon](https://github.com/mastodon/mastodon-android) (`org.joinmastodon.android`) from (F-Droid](https://apt.izzysoft.de/fdroid/index/apk/org.joinmastodon.android) and [Mastodon Redirect](https://github.com/zacharee/MastodonRedirect) (`dev.zwander.mastodonredirect`) from [F-Droid](https://apt.izzysoft.de/fdroid/index/apk/dev.zwander.mastodonredirect).
  - Matrix: [Element X](https://github.com/element-hq/element-x-android) (`io.element.android.x`) from [F-Droid](https://f-droid.org/packages/io.element.android.x).
  - NicoNico: [PipePipe](https://github.com/InfinityLoop1308/PipePipe) (`InfinityLoop1309.NewPipeEnhanced`) from [GitHub release](https://github.com/InfinityLoop1308/PipePipe/releases) (recommended due to frequent updates) or [F-Droid](https://f-droid.org/packages/InfinityLoop1309.NewPipeEnhanced).
  - Reddit: [Reddit website](https://reddit.com).
  - Telegram: [Forkgram / Fork Client](https://github.com/forkgram/TelegramAndroid) (`org.forkgram.messenger`) from [F-Droid](https://f-droid.org/packages/org.forkgram.messenger).
  - X (Twitter): [X (Twitter) website](https://x.com) and [Nitterium](https://github.com/kaleedtc/Nitterium) (`com.kaleedtc.nitterium`) from [F-Droid](https://apt.izzysoft.de/fdroid/index/apk/com.kaleedtc.nitterium).
  - YouTube: [PipePipe](https://github.com/InfinityLoop1308/PipePipe) (`InfinityLoop1309.NewPipeEnhanced`) from [GitHub release](https://github.com/InfinityLoop1308/PipePipe/releases) (recommended due to frequent updates) or [F-Droid](https://f-droid.org/packages/InfinityLoop1309.NewPipeEnhanced).

## Credits

A special thanks to the following people and projects for their invaluable findings and inspection. Copies of their files are made solely for archiving purposes and are subjected to their own copyright status.
- [Universal Android Debloater Next Generation](https://github.com/Universal-Debloater-Alliance/universal-android-debloater-next-generation): [`uad_lists.json`](https://raw.githubusercontent.com/Universal-Debloater-Alliance/universal-android-debloater-next-generation/main/resources/assets/uad_lists.json) ([copy](Universal%20Android%20Debloater%20Next%20Generation/uad_lists.json))
- [Universal Android Debloater GUI](https://github.com/0x192/universal-android-debloater): [`uad_lists.json`](https://raw.githubusercontent.com/0x192/universal-android-debloater/refs/heads/main/resources/assets/uad_lists.json) ([copy](Universal%20Android%20Debloater%20GUI/uad_lists.json))
- Ruvomain / [Successful-Dance1792 (Reddit)](https://www.reddit.com/user/Successful-Dance1792) / [Ruvyrom (XDA Forums)](https://xdaforums.com/m/ruvyrom.7629260):
  - [RUVOMAIN PROTOCOL - ONE UI 8.5 OPTIMIZATION (pastebin.com)](https://pastebin.com/k5JnfbSW) (<a href="Ruvomain/S24+ OneUI 8.5 Extreme Debloat Guide - Setup & Risk Tiers (Ruvomain Protocol).txt">copy</a>)
  - [Samsung Galaxy S24 Plus OneUI 8.5 Extreme Debloat (321 apps) (pastebin.com)](https://pastebin.com/FdfDYqZt) (<a href="Ruvomain/Samsung Galaxy S24 Plus OneUI 8.5 Extreme Debloat (321 apps).json">copy</a>)
  - <a href="https://www.reddit.com/r/androidroot/s/jV6eWfhU1u">[GUIDE] The "Flat Drain & Performance" Protocol: My Extreme S24+ OneUi 8.5 Debloat Setup (Non-Root) (Reddit)</a>
  - <a href="https://www.reddit.com/r/samsunggalaxy/s/TEfJq4I6fb">Antutu score et battery life of my Galaxy S24+ with Exynos 2400 (Reddit)</a>
  - <a href="https://xdaforums.com/t/guide-no-root-debloating-optimization-11h-sot-exynos-2400-knox-safe-no-pc-need.4789055">[GUIDE] No-Root Debloating & Optimization (11h+ SoT, Exynos 2400, Knox-Safe) [NO PC NEED] (XDA Forums)</a>
- [HonkyHornyGoose (Reddit)](https://www.reddit.com/user/HonkyHornyGoose):
  - <a href="https://www.reddit.com/r/GalaxyS25Ultra/comments/1nahf5n/safely_max_debloat_the_s25_ultra_without">Safely Max Debloat The S25 Ultra Without Bootloops Or Broken Functionality Of Important System Components (Reddit)</a>
  - <a href="https://www.reddit.com/r/S25Ultra/comments/1nanun9/how_to_debloat_and_optimize_the_s25_ultra_for">How To Debloat And Optimize The S25 Ultra For Battery Optimization And Power Users (Reddit)</a>
- [hurricane8485 (Reddit)](https://www.reddit.com/user/hurricane8485): <a href="https://www.reddit.com/r/GalaxyS22/comments/1fugk3f/the_combined_guide_to_debloatspeed_up_and_improve">The combined guide to debloat/speed up and improve S22's and other galaxy devices battery life (Reddit)</a>
- [demonofparadise_213 (Reddit)](https://www.reddit.com/user/demonofparadise_213): <a href="https://www.reddit.com/r/miui/comments/1ij39us/peak_performance_and_save_battery_without_root_no">Peak performance and Save Battery without Root? NO PROBLEM!! (Reddit)</a>
- [THE NEW OIL](https://thenewoil.org/en): [Mobile Devices: Settings](https://thenewoil.org/en/guides/most-important/mobile-settings)
- [Mullvad shares workaround for Android 16 VPN leak that remains unfixed](https://cyberinsider.com/mullvad-shares-workaround-for-android-16-vpn-leak-that-remains-unfixed).
- [GrapheneOS fixes Android VPN leak Google refused to patch](https://cyberinsider.com/grapheneos-fixes-android-vpn-leak-google-refused-to-patch)
