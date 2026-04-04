# Samsung Android Debloat List

This repo contains the list of apps I disabled on my Samsung Galaxy S24+ Android 16 device.

## Description

You can use ADB via Shizuku or PC, root, or other apps utilizing them such as Hail (<https://github.com/aistra0528/Hail>) to disable (`pm disable --user 0 <package_name>`), enable (`pm enable --user 0 <package_name>`), uninstall (`pm uninstall --user 0 <package_name>`), and reinstall (`pm install-existing --user 0 <package_name>`) apps.

ADB command can be run in ADB shell using a PC or a terminal app via `rish` provided by Shizuku or root. Shizuku is an Android app that allows other apps to use system-level APIs that require ADB/root privileges. I recommend using the <https://github.com/thedjchi/Shizuku> fork and manage its installation using <https://github.com/ImranR98/Obtainium>.

The list is provided in three formats: [ADB Disable Command](#adb-disable-command), [ADB Uninstall Command](#adb-uninstall-command), and [Hail](#hail).

See my <https://github.com/Willie169/Android-Non-Root> repo for more Android tips.

## Read Before Execution

- Both Google Messages (`com.google.android.apps.messaging`) and Samsung Messages (`com.samsung.android.messaging`) are disabled/uninstalled in the list because I'm using Fossify Messages (`org.fossify.messages`): <https://github.com/FossifyOrg/Messages> from F-Droid: <https://f-droid.org/packages/org.fossify.messages>. Enable one of them if you need.
- Disabling/Uninstalling Samsung Wallet Digital Key (`com.samsung.android.dkey`) may cause increase in background resources usage, so it is not disabled/uninstalled in the list.
- Disabling/Uninstalling Smart View (`com.samsung.android.smartmirroring`) may cause One UI Home (`com.sec.android.app.launcher`) to crash, so it is not disabled/uninstalled in the list.
- Disabling/Uninstalling Filter Provider (`com.samsung.android.provider.filterprovider`) or Samsung Capture (`com.samsung.android.app.smartcapture`) will cause Camera (`com.sec.android.app.camera`) to crash, so they are not disabled/uninstalled in the list.
- Samsung text-to-speech engine (`com.samsung.SMT`) is disabled/uninstalled in the list. You can also disable/uninstall all apps starting with `com.samsung.SMT.lang_` with ADB command:
  ```
  for pkg in $(pm list packages --user 0 -f | sed "s/.*=//" | grep com.samsung.SMT.lang_); do
    pm uninstall --user 0 $pkg
  done
  ```
- Reminder, Apps, Clipboard (`com.samsung.android.app.clipboardedge`), Tools (`com.sec.android.app.quicktool`), and Voice changer of Edge panels remain usable after applying the list, but Task of Edge panels (`com.samsung.android.app.taskedge`) is disabled/uninstalled in the list. Enable it if you need. Clipboard of Edge panels is dependent on Samsung Keyboard (`com.samsung.android.honeyboard`), so the latter is not disabled/uninstalled in the list. Disable them if you don't need them.
- Terminal (`com.android.virtualization.terminal`) is disabled/uninstalled in the list because it's not usable after all in a test on Mar 30, 2026.
- Meta App Installer (`com.facebook.system`), Meta App Manager (`com.facebook.appmanager`), and Meta Services (`com.facebook.services`) are disabled/uninstalled in the list because disabling them won't affect Facebook (`com.facebook.katana`), Messenger (`com.facebook.orca`), and other apps.

## Disabled/Uninstalled

This is an incomplete list of apps disabled/uninstalled in the list that you may want to enable.

- Hey Google Hotword (`com.android.hotwordenrollment.xgoogle`) and OK Google Hotword (`com.android.hotwordenrollment.okgoogle`)
- Bixby (`com.samsung.android.bixby.agent`), Bixby Vision (`com.samsung.android.visionintelligence`), BixbyVision Framework (`com.samsung.android.bixbyvision.framework`), and Voice wake-up (`com.samsung.android.bixby.wakeup`)
- Link to Windows (`com.microsoft.appmanager`) and Link to Windows Service (`com.samsung.android.mdx`)
- Microsoft SwiftKey Keyboard (`com.touchtype.swiftkey`) and Microsoft SwiftKey Factory Settings (`com.swiftkey.swiftkeyconfigurator`)
- Modes and Routines (`com.samsung.android.app.routines`)
- Neayby Service (`com.samsung.android.allshare.service.mediashare`), Nearby devices (`com.samsung.android.mydevice`), Nearby device scanning (`com.samsung.android.easysetup`), Nearby device scanning agent (`com.samsung.android.beaconmanager`)
- Samsung Pass (`com.samsung.android.samsungpass`) and Autofill with Samsung Pass (`com.samsung.android.samsungpassautofill`)
- Samsung PaymentFramework (`com.samsung.android.spayfw`)
- SmartThings Companion (`com.samsung.android.service.stplatform`)
- TalkBack (`com.samsung.android.accessibility.talkback`)
- Voice Access (`com.google.android.apps.accessibility.voiceaccess`)
- Weather (`com.sec.android.daemonapp`)

## Not Disabled/Uninstalled

These apps are not disabled/uninstalled in the list and should be safe to disable if you don't need them. The app list in the right of each app is the alternative I recommend. I recommend using Droid-fy (`com.looker.droidify`): <https://github.com/Droid-ify/client> from F-Droid: <https://f-droid.org/packages/com.looker.droidify> to install apps from F-Droid and using Obtainium (`dev.imranr.obtainium.fdroid`): <https://github.com/ImranR98/Obtainium> from F-Droid: <https://f-droid.org/packages/dev.imranr.obtainium.fdroid> from apps from other sources such as GitHub release.

- Google (`com.google.android.googlequicksearchbox`): CircleToSearch (`com.akslabs.circletosearch`): <https://github.com/AKS-Labs/CircleToSearch> from F-Droid: <https://f-droid.org/packages/com.akslabs.circletosearch>, Firefox (`org.mozilla.firefox`): <https://github.com/mozilla-mobile/firefox-android> from Google Play: <https://play.google.com/store/apps/details?id=org.mozilla.firefox>, Brave (`com.brave.browser`): <https://github.com/brave/brave-browser> from Google Play: <https://play.google.com/store/apps/details?id=com.brave.browser>.
- Chrome (`com.android.chrome`): Firefox (`org.mozilla.firefox`): <https://github.com/mozilla-mobile/firefox-android> from Google Play: <https://play.google.com/store/apps/details?id=org.mozilla.firefox>, Brave (`com.brave.browser`): <https://github.com/brave/brave-browser> from Google Play: <https://play.google.com/store/apps/details?id=com.brave.browser>.
- Gmail (`com.google.android.gm`): Thunderbird (`net.thunderbird.android`): <https://github.com/thunderbird/thunderbird-android> from F-Droid: <https://f-droid.org/packages/net.thunderbird.android>.
- Maps (`com.google.android.apps.maps`): GMaps WV (`us.spotco.maps`): <https://github.com/woheller69/maps> from F-Droid: <https://f-droid.org/packages/us.spotco.maps>.
- Meet (`com.google.android.apps.tachyon`)
- Gemini (`com.google.android.apps.bard`)
- Galaxy Store (`com.sec.android.app.samsungapps`)
- Samsung Account (`com.osp.app.signin`), Samsung Cloud (`com.samsung.android.scloud`), and Samsung Cloud Assistant (`com.samsung.android.scpm`)
- Quick Share (`com.samsung.android.app.sharelive`), Quick Share Agent (`com.samsung.android.aware.service`), Quick Share Connectivity (`com.samsung.android.mdx.kit`): LocalSend (`org.localsend.localsend_app`): <https://github.com/localsend/localsend> from F-Droid: <https://f-droid.org/packages/org.localsend.localsend_app>.
- YouTube (`com.google.android.youtube`): PipePipe (`InfinityLoop1309.NewPipeEnhanced`): <https://github.com/InfinityLoop1308/PipePipe> from F-Droid: <https://f-droid.org/packages/InfinityLoop1309.NewPipeEnhanced> or GitHub release (recommended due to frequent updates).

## ADB Disable Command

```
pm disable --user 0 com.android.apps.tag
pm disable --user 0 com.android.bips
pm disable --user 0 com.android.bluetoothmidiservice
pm disable --user 0 com.android.bookmarkprovider
pm disable --user 0 com.android.dreams.basic
pm disable --user 0 com.android.dreams.phototable
pm disable --user 0 com.android.hotwordenrollment.okgoogle
pm disable --user 0 com.android.hotwordenrollment.xgoogle
pm disable --user 0 com.android.internal.display.cutout.emulation.corner
pm disable --user 0 com.android.internal.display.cutout.emulation.double
pm disable --user 0 com.android.internal.display.cutout.emulation.tall
pm disable --user 0 com.android.printspooler
pm disable --user 0 com.android.providers.calendar
pm disable --user 0 com.android.providers.partnerbookmarks
pm disable --user 0 com.android.virtualization.terminal
pm disable --user 0 com.facebook.appmanager
pm disable --user 0 com.facebook.services
pm disable --user 0 com.facebook.system
pm disable --user 0 com.google.android.adservices.api
pm disable --user 0 com.google.android.aicore
pm disable --user 0 com.google.android.apps.accessibility.voiceaccess
pm disable --user 0 com.google.android.apps.aiwallpapers
pm disable --user 0 com.google.android.apps.carrier.carrierwifi
pm disable --user 0 com.google.android.apps.messaging
pm disable --user 0 com.google.android.apps.turbo
pm disable --user 0 com.google.android.feedback
pm disable --user 0 com.google.android.gms.supervision
pm disable --user 0 com.google.android.health.connect.backuprestore
pm disable --user 0 com.google.android.healthconnect.controller
pm disable --user 0 com.google.android.partnersetup
pm disable --user 0 com.google.android.printservice.recommendation
pm disable --user 0 com.google.android.projection.gearhead
pm disable --user 0 com.google.android.safetycenter.resources
pm disable --user 0 com.google.android.setupwizard
pm disable --user 0 com.google.android.syncadapters.calendar
pm disable --user 0 com.google.ar.core
pm disable --user 0 com.google.mainline.adservices
pm disable --user 0 com.google.mainline.telemetry
pm disable --user 0 com.hiya.star
pm disable --user 0 com.microsoft.appmanager
pm disable --user 0 com.mygalaxy.service
pm disable --user 0 com.samsung.SMT
pm disable --user 0 com.samsung.SMT.lang_en_us_l03
pm disable --user 0 com.samsung.SMT.lang_zh_cn_l02
pm disable --user 0 com.samsung.SMT.lang_zh_hk_f00
pm disable --user 0 com.samsung.SMT.lang_zh_tw_f00
pm disable --user 0 com.samsung.accessory.budsunitemgr
pm disable --user 0 com.samsung.android.accessibility.talkback
pm disable --user 0 com.samsung.android.aicore
pm disable --user 0 com.samsung.android.aircommandmanager
pm disable --user 0 com.samsung.android.allshare.service.mediashare
pm disable --user 0 com.samsung.android.app.camera.sticker.facearavatar.preload
pm disable --user 0 com.samsung.android.app.omcagent
pm disable --user 0 com.samsung.android.app.parentalcare
pm disable --user 0 com.samsung.android.app.routines
pm disable --user 0 com.samsung.android.app.taskedge
pm disable --user 0 com.samsung.android.app.watchmanagerstub
pm disable --user 0 com.samsung.android.aremoji
pm disable --user 0 com.samsung.android.aremojieditor
pm disable --user 0 com.samsung.android.authfw
pm disable --user 0 com.samsung.android.bbc.bbcagent
pm disable --user 0 com.samsung.android.beaconmanager
pm disable --user 0 com.samsung.android.bixby.agent
pm disable --user 0 com.samsung.android.bixby.wakeup
pm disable --user 0 com.samsung.android.bixbyvision.framework
pm disable --user 0 com.samsung.android.carkey
pm disable --user 0 com.samsung.android.dbsc
pm disable --user 0 com.samsung.android.easysetup
pm disable --user 0 com.samsung.android.fast
pm disable --user 0 com.samsung.android.forest
pm disable --user 0 com.samsung.android.gru
pm disable --user 0 com.samsung.android.hwresourceshare
pm disable --user 0 com.samsung.android.hwresourceshare.storage
pm disable --user 0 com.samsung.android.inputshare
pm disable --user 0 com.samsung.android.intellivoiceservice
pm disable --user 0 com.samsung.android.ipsgeofence
pm disable --user 0 com.samsung.android.kidsinstaller
pm disable --user 0 com.samsung.android.knox.analytics.uploader
pm disable --user 0 com.samsung.android.knox.attestation
pm disable --user 0 com.samsung.android.knox.mpos
pm disable --user 0 com.samsung.android.knox.pushmanager
pm disable --user 0 com.samsung.android.knox.zt.framework
pm disable --user 0 com.samsung.android.mapsagent
pm disable --user 0 com.samsung.android.mcfds
pm disable --user 0 com.samsung.android.mcfserver
pm disable --user 0 com.samsung.android.mdx
pm disable --user 0 com.samsung.android.messaging
pm disable --user 0 com.samsung.android.mobileservice
pm disable --user 0 com.samsung.android.mydevice
pm disable --user 0 com.samsung.android.rampart
pm disable --user 0 com.samsung.android.rubin.app
pm disable --user 0 com.samsung.android.samsungpass
pm disable --user 0 com.samsung.android.samsungpassautofill
pm disable --user 0 com.samsung.android.sdk.handwriting
pm disable --user 0 com.samsung.android.service.peoplestripe
pm disable --user 0 com.samsung.android.service.stplatform
pm disable --user 0 com.samsung.android.service.tagservice
pm disable --user 0 com.samsung.android.settingshelper
pm disable --user 0 com.samsung.android.smartsuggestions
pm disable --user 0 com.samsung.android.smartswitchassistant
pm disable --user 0 com.samsung.android.spayfw
pm disable --user 0 com.samsung.android.stickercenter
pm disable --user 0 com.samsung.android.themestore
pm disable --user 0 com.samsung.android.vision.model
pm disable --user 0 com.samsung.android.visionintelligence
pm disable --user 0 com.samsung.android.visual.cloudcore
pm disable --user 0 com.samsung.petservice
pm disable --user 0 com.samsung.videoscan
pm disable --user 0 com.sec.android.app.billing
pm disable --user 0 com.sec.android.app.chromecustomizations
pm disable --user 0 com.sec.android.app.desktoplauncher
pm disable --user 0 com.sec.android.app.ve.vebgm
pm disable --user 0 com.sec.android.autodoodle.service
pm disable --user 0 com.sec.android.daemonapp
pm disable --user 0 com.sec.android.desktopmode.uiservice
pm disable --user 0 com.sec.android.easyMover
pm disable --user 0 com.sec.android.easyMover.Agent
pm disable --user 0 com.sec.android.easyonehand
pm disable --user 0 com.sec.android.mimage.avatarstickers
pm disable --user 0 com.sec.android.widgetapp.easymodecontactswidget
pm disable --user 0 com.sec.bcservice
pm disable --user 0 com.sec.location.nsflp2
pm disable --user 0 com.sec.spp.push
pm disable --user 0 com.sec.unifiedwfc
pm disable --user 0 com.swiftkey.swiftkeyconfigurator
pm disable --user 0 com.touchtype.swiftkey
```

## ADB Disable Command

```
pm uninstall --user 0 com.android.apps.tag
pm uninstall --user 0 com.android.bips
pm uninstall --user 0 com.android.bluetoothmidiservice
pm uninstall --user 0 com.android.bookmarkprovider
pm uninstall --user 0 com.android.dreams.basic
pm uninstall --user 0 com.android.dreams.phototable
pm uninstall --user 0 com.android.hotwordenrollment.okgoogle
pm uninstall --user 0 com.android.hotwordenrollment.xgoogle
pm uninstall --user 0 com.android.internal.display.cutout.emulation.corner
pm uninstall --user 0 com.android.internal.display.cutout.emulation.double
pm uninstall --user 0 com.android.internal.display.cutout.emulation.tall
pm uninstall --user 0 com.android.printspooler
pm uninstall --user 0 com.android.providers.calendar
pm uninstall --user 0 com.android.providers.partnerbookmarks
pm uninstall --user 0 com.android.virtualization.terminal
pm uninstall --user 0 com.facebook.appmanager
pm uninstall --user 0 com.facebook.services
pm uninstall --user 0 com.facebook.system
pm uninstall --user 0 com.google.android.adservices.api
pm uninstall --user 0 com.google.android.aicore
pm uninstall --user 0 com.google.android.apps.accessibility.voiceaccess
pm uninstall --user 0 com.google.android.apps.aiwallpapers
pm uninstall --user 0 com.google.android.apps.carrier.carrierwifi
pm uninstall --user 0 com.google.android.apps.messaging
pm uninstall --user 0 com.google.android.apps.turbo
pm uninstall --user 0 com.google.android.feedback
pm uninstall --user 0 com.google.android.gms.supervision
pm uninstall --user 0 com.google.android.health.connect.backuprestore
pm uninstall --user 0 com.google.android.healthconnect.controller
pm uninstall --user 0 com.google.android.partnersetup
pm uninstall --user 0 com.google.android.printservice.recommendation
pm uninstall --user 0 com.google.android.projection.gearhead
pm uninstall --user 0 com.google.android.safetycenter.resources
pm uninstall --user 0 com.google.android.setupwizard
pm uninstall --user 0 com.google.android.syncadapters.calendar
pm uninstall --user 0 com.google.ar.core
pm uninstall --user 0 com.google.mainline.adservices
pm uninstall --user 0 com.google.mainline.telemetry
pm uninstall --user 0 com.hiya.star
pm uninstall --user 0 com.microsoft.appmanager
pm uninstall --user 0 com.mygalaxy.service
pm uninstall --user 0 com.samsung.SMT
pm uninstall --user 0 com.samsung.SMT.lang_en_us_l03
pm uninstall --user 0 com.samsung.SMT.lang_zh_cn_l02
pm uninstall --user 0 com.samsung.SMT.lang_zh_hk_f00
pm uninstall --user 0 com.samsung.SMT.lang_zh_tw_f00
pm uninstall --user 0 com.samsung.accessory.budsunitemgr
pm uninstall --user 0 com.samsung.android.accessibility.talkback
pm uninstall --user 0 com.samsung.android.aicore
pm uninstall --user 0 com.samsung.android.aircommandmanager
pm uninstall --user 0 com.samsung.android.allshare.service.mediashare
pm uninstall --user 0 com.samsung.android.app.camera.sticker.facearavatar.preload
pm uninstall --user 0 com.samsung.android.app.omcagent
pm uninstall --user 0 com.samsung.android.app.parentalcare
pm uninstall --user 0 com.samsung.android.app.routines
pm uninstall --user 0 com.samsung.android.app.taskedge
pm uninstall --user 0 com.samsung.android.app.watchmanagerstub
pm uninstall --user 0 com.samsung.android.aremoji
pm uninstall --user 0 com.samsung.android.aremojieditor
pm uninstall --user 0 com.samsung.android.authfw
pm uninstall --user 0 com.samsung.android.bbc.bbcagent
pm uninstall --user 0 com.samsung.android.beaconmanager
pm uninstall --user 0 com.samsung.android.bixby.agent
pm uninstall --user 0 com.samsung.android.bixby.wakeup
pm uninstall --user 0 com.samsung.android.bixbyvision.framework
pm uninstall --user 0 com.samsung.android.carkey
pm uninstall --user 0 com.samsung.android.dbsc
pm uninstall --user 0 com.samsung.android.easysetup
pm uninstall --user 0 com.samsung.android.fast
pm uninstall --user 0 com.samsung.android.forest
pm uninstall --user 0 com.samsung.android.gru
pm uninstall --user 0 com.samsung.android.hwresourceshare
pm uninstall --user 0 com.samsung.android.hwresourceshare.storage
pm uninstall --user 0 com.samsung.android.inputshare
pm uninstall --user 0 com.samsung.android.intellivoiceservice
pm uninstall --user 0 com.samsung.android.ipsgeofence
pm uninstall --user 0 com.samsung.android.kidsinstaller
pm uninstall --user 0 com.samsung.android.knox.analytics.uploader
pm uninstall --user 0 com.samsung.android.knox.attestation
pm uninstall --user 0 com.samsung.android.knox.mpos
pm uninstall --user 0 com.samsung.android.knox.pushmanager
pm uninstall --user 0 com.samsung.android.knox.zt.framework
pm uninstall --user 0 com.samsung.android.mapsagent
pm uninstall --user 0 com.samsung.android.mcfds
pm uninstall --user 0 com.samsung.android.mcfserver
pm uninstall --user 0 com.samsung.android.mdx
pm uninstall --user 0 com.samsung.android.messaging
pm uninstall --user 0 com.samsung.android.mobileservice
pm uninstall --user 0 com.samsung.android.mydevice
pm uninstall --user 0 com.samsung.android.rampart
pm uninstall --user 0 com.samsung.android.rubin.app
pm uninstall --user 0 com.samsung.android.samsungpass
pm uninstall --user 0 com.samsung.android.samsungpassautofill
pm uninstall --user 0 com.samsung.android.sdk.handwriting
pm uninstall --user 0 com.samsung.android.service.peoplestripe
pm uninstall --user 0 com.samsung.android.service.stplatform
pm uninstall --user 0 com.samsung.android.service.tagservice
pm uninstall --user 0 com.samsung.android.settingshelper
pm uninstall --user 0 com.samsung.android.smartsuggestions
pm uninstall --user 0 com.samsung.android.smartswitchassistant
pm uninstall --user 0 com.samsung.android.spayfw
pm uninstall --user 0 com.samsung.android.stickercenter
pm uninstall --user 0 com.samsung.android.themestore
pm uninstall --user 0 com.samsung.android.vision.model
pm uninstall --user 0 com.samsung.android.visionintelligence
pm uninstall --user 0 com.samsung.android.visual.cloudcore
pm uninstall --user 0 com.samsung.petservice
pm uninstall --user 0 com.samsung.videoscan
pm uninstall --user 0 com.sec.android.app.billing
pm uninstall --user 0 com.sec.android.app.chromecustomizations
pm uninstall --user 0 com.sec.android.app.desktoplauncher
pm uninstall --user 0 com.sec.android.app.ve.vebgm
pm uninstall --user 0 com.sec.android.autodoodle.service
pm uninstall --user 0 com.sec.android.daemonapp
pm uninstall --user 0 com.sec.android.desktopmode.uiservice
pm uninstall --user 0 com.sec.android.easyMover
pm uninstall --user 0 com.sec.android.easyMover.Agent
pm uninstall --user 0 com.sec.android.easyonehand
pm uninstall --user 0 com.sec.android.mimage.avatarstickers
pm uninstall --user 0 com.sec.android.widgetapp.easymodecontactswidget
pm uninstall --user 0 com.sec.bcservice
pm uninstall --user 0 com.sec.location.nsflp2
pm uninstall --user 0 com.sec.spp.push
pm uninstall --user 0 com.sec.unifiedwfc
pm uninstall --user 0 com.swiftkey.swiftkeyconfigurator
pm uninstall --user 0 com.touchtype.swiftkey 
```

## Hail

Usage:
1. Install Hail (<https://github.com/aistra0528/Hail>).
2. Start Shizuku.
2. Copy the code block below.
2. Open Hail.
2. Go to `Settings > Work mode` and select `Shizuku - Disable`.
2. Go to `Home`, click three dots at the top right corner, click `Import app > Import from Clipboard`.

```
["com.android.apps.tag","com.android.bips","com.android.bluetoothmidiservice","com.android.bookmarkprovider","com.android.dreams.basic","com.android.dreams.phototable","com.android.hotwordenrollment.okgoogle","com.android.hotwordenrollment.xgoogle","com.android.internal.display.cutout.emulation.corner","com.android.internal.display.cutout.emulation.double","com.android.internal.display.cutout.emulation.tall","com.android.printspooler","com.android.providers.calendar","com.android.providers.partnerbookmarks","com.android.virtualization.terminal","com.facebook.appmanager","com.facebook.services","com.facebook.system","com.google.android.adservices.api","com.google.android.aicore","com.google.android.apps.accessibility.voiceaccess","com.google.android.apps.aiwallpapers","com.google.android.apps.carrier.carrierwifi","com.google.android.apps.messaging","com.google.android.apps.turbo","com.google.android.feedback","com.google.android.gms.supervision","com.google.android.health.connect.backuprestore","com.google.android.healthconnect.controller","com.google.android.partnersetup","com.google.android.printservice.recommendation","com.google.android.projection.gearhead","com.google.android.safetycenter.resources","com.google.android.setupwizard","com.google.android.syncadapters.calendar","com.google.ar.core","com.google.mainline.adservices","com.google.mainline.telemetry","com.hiya.star","com.microsoft.appmanager","com.mygalaxy.service","com.samsung.SMT","com.samsung.SMT.lang_en_us_l03","com.samsung.SMT.lang_zh_cn_l02","com.samsung.SMT.lang_zh_hk_f00","com.samsung.SMT.lang_zh_tw_f00","com.samsung.accessory.budsunitemgr","com.samsung.android.accessibility.talkback","com.samsung.android.aicore","com.samsung.android.aircommandmanager","com.samsung.android.allshare.service.mediashare","com.samsung.android.app.camera.sticker.facearavatar.preload","com.samsung.android.app.omcagent","com.samsung.android.app.parentalcare","com.samsung.android.app.routines","com.samsung.android.app.taskedge","com.samsung.android.app.watchmanagerstub","com.samsung.android.aremoji","com.samsung.android.aremojieditor","com.samsung.android.authfw","com.samsung.android.bbc.bbcagent","com.samsung.android.beaconmanager","com.samsung.android.bixby.agent","com.samsung.android.bixby.wakeup","com.samsung.android.bixbyvision.framework","com.samsung.android.carkey","com.samsung.android.dbsc","com.samsung.android.easysetup","com.samsung.android.fast","com.samsung.android.forest","com.samsung.android.gru","com.samsung.android.hwresourceshare","com.samsung.android.hwresourceshare.storage","com.samsung.android.inputshare","com.samsung.android.intellivoiceservice","com.samsung.android.ipsgeofence","com.samsung.android.kidsinstaller","com.samsung.android.knox.analytics.uploader","com.samsung.android.knox.attestation","com.samsung.android.knox.mpos","com.samsung.android.knox.pushmanager","com.samsung.android.knox.zt.framework","com.samsung.android.mapsagent","com.samsung.android.mcfds","com.samsung.android.mcfserver","com.samsung.android.mdx","com.samsung.android.messaging","com.samsung.android.mobileservice","com.samsung.android.mydevice","com.samsung.android.rampart","com.samsung.android.rubin.app","com.samsung.android.samsungpass","com.samsung.android.samsungpassautofill","com.samsung.android.sdk.handwriting","com.samsung.android.service.peoplestripe","com.samsung.android.service.stplatform","com.samsung.android.service.tagservice","com.samsung.android.settingshelper","com.samsung.android.smartsuggestions","com.samsung.android.smartswitchassistant","com.samsung.android.spayfw","com.samsung.android.stickercenter","com.samsung.android.themestore","com.samsung.android.vision.model","com.samsung.android.visionintelligence","com.samsung.android.visual.cloudcore","com.samsung.petservice","com.samsung.videoscan","com.sec.android.app.billing","com.sec.android.app.chromecustomizations","com.sec.android.app.desktoplauncher","com.sec.android.app.ve.vebgm","com.sec.android.autodoodle.service","com.sec.android.daemonapp","com.sec.android.desktopmode.uiservice","com.sec.android.easyMover","com.sec.android.easyMover.Agent","com.sec.android.easyonehand","com.sec.android.mimage.avatarstickers","com.sec.android.widgetapp.easymodecontactswidget","com.sec.bcservice","com.sec.location.nsflp2","com.sec.spp.push","com.sec.unifiedwfc","com.swiftkey.swiftkeyconfigurator","com.touchtype.swiftkey"] 
```

## Other Useful ADB Commands

Commands starting with `pm` are to be run in ADB shell. Commands including `rish` are to be run outside ADB shell with assumption that ADB shell can be accessed with `rish`.

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
List uninstalled system apps of user 0:
```
diff <(echo 'pm list packages --user 0 && exit' | rish) <(echo 'pm list packages -u --user 0 && exit' | rish) | grep '^>' | sed "s/> package://" | sort | uniq
```

## License

This repo is licensed under CC BY 4.0. See [LICENSE.txt](LICENSE.txt) for the legal code.
