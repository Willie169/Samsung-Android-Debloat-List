# Samsung Android Debloat List

This repo contains the list of apps I uninstalled on my Galaxy S24+ Android 16 device.

## Description

You can use ADB via Shizuku or PC, root, or other apps utilizing them such as `rish` provided by Shizuku in a terminal app or Hail (<https://github.com/aistra0528/Hail>) to disable (`pm disable --user 0 <package_name>`), enable (`pm enable --user 0 <package_name>`), uninstall (`pm uninstall --user 0 <package_name>`), and reinstall (for system apps) (`pm install-existing --user 0 <package_name>`) apps. See [Shizuku](#shizuku) for more information about Shizuku.

The list is provided in four formats: [Raw List](#raw-list), [ADB Disable Command](#adb-disable-command), [ADB Uninstall Command](#adb-uninstall-command), and [Hail](#hail).

See my <https://github.com/Willie169/Android-Non-Root> repo for more Android tips.

## Caution

- Android Setup (`com.google.android.setupwizard`) sends a notification after ADB operations, run the following inside ADB shell to turn it off:
  ```
  settings put global setup_wizard_has_run 1
  settings put secure user_setup_complete 1
  settings put global device_provisioned 1
  ```
- Both Google Messages (`com.google.android.apps.messaging`) and Samsung Messages (`com.samsung.android.messaging`) are disabled/uninstalled in the list because I'm using Fossify Messages (`org.fossify.messages`): <https://github.com/FossifyOrg/Messages> from F-Droid: <https://f-droid.org/packages/org.fossify.messages>. Enable/install one of them if you use them.
- Gestural Navigation Bar (`com.samsung.internal.systemui.navbar.gestural_no_hint`), Gestural Navigation Bar (`com.samsung.internal.systemui.navbar.sec_gestural_no_hint`), and Gestural Navigation Bar (`com.samsung.internal.systemui.navbar.sec_gestural`) are disabled/uninstalled in the list. Enable/install them if you use swipe gestures instead of three buttons navigation bar.
- Gallery (`com.sec.android.gallery3d`), Gallery (`com.samsung.android.widget.pictureframe`), Gallery stories (`com.samsung.storyservice`), CMHProvider (`com.samsung.cmh`), FaceService (`com.samsung.faceservice`), Editor Lite (`com.samsung.app.newtrim`), and Photo Editor (`com.sec.android.mimage.photoretouching`) are disabled/uninstalled in the list because I'm using Lavender Photos (`com.kaii.photos`): <https://github.com/kaii-lb/LavenderPhotos> from F-Droid: <https://apt.izzysoft.de/fdroid/index/apk/com.kaii.photos>, and Image Toolbox (`ru.tech.imageresizershrinker`): <https://github.com/T8RIN/ImageToolbox> from F-Droid: <https://f-droid.org/packages/ru.tech>.imageresizershrinker>. Enable/install them if you need.
- Smart capture (`com.samsung.android.app.smartcapture`) is disabled/uninstalled in the list. This makes taking screenshots does not send notification but does not affect taking screenshots or other functionalities.
- Disabling/uninstalling Samsung Wallet Digital Key (`com.samsung.android.dkey`) may cause increase in background resources usage, so it is not disabled/uninstalled in the list.
- Disabling/uninstalling DiagMonAgent (`com.sec.android.diagmonagent`) may cause crashes, so it is not disabled/uninstalled in the list.
- Disabling/uninstalling NFC Service (`com.android.nfc`) may cause crashes, so it is not disabled/uninstalled in the list.
- Disabling/uninstalling Smart View (`com.samsung.android.smartmirroring`) may cause One UI Home (`com.sec.android.app.launcher`) and/or Video Player (`com.samsung.android.video`) to crash, so it is not disabled/uninstalled in the list.
- Disabling/uninstalling Filter Provider (`com.samsung.android.provider.filterprovider`) may cause Camera (`com.sec.android.app.camera`) to crash, so it is are not disabled/uninstalled in the list.
- Samsung text-to-speech engine (`com.samsung.SMT`), and the voices pre-installed on my phone, SamsungTTS US English Voice 1 (`com.samsung.SMT.lang_en_us_l03`), SamsungTTS 简体中文 语音 1 (`com.samsung.SMT.lang_zh_cn_l02`), SamsungTTS Cantonese Voice 1 (`com.samsung.SMT.lang_zh_hk_f00`), SamsungTTS Taiwanese Mandarin Voice 1 (`com.samsung.SMT.lang_zh_tw_f00`), are disabled/uninstalled in the list because I use SherpaTTS (`org.woheller69.ttsengine`): <https://github.com/woheller69/ttsEngine> from F-Droid: <https://f-droid.org/packages/org.woheller69.ttsengine>. Enable/install Samsung text-to-speech engine and the voices you want if you use them. Pre-installed voices differ across regions and all start with `com.samsung.SMT.lang_` , you can disable them with the ADB command:
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
- Android Switch (`com.google.android.apps.restore`), App protection (`com.samsung.android.sm.devicesecurity`), Enrollment Service (`com.sec.enterprise.knox.cloudmdm.smdms`), Galaxy Theme Service (`com.samsung.android.themecenter`), KLMS Agent (`com.samsung.klmsagent`), KnoxVpnPacProcessor (`com.knox.vpn.proxyhandler`), and Smart Switch (`com.sec.android.easyMover`) may be automatically re-enabled/reinstalled and are not disabled/uninstalled in the list.
- See [Disabled/Uninstalled](#disabled-uninstalled) for an incomplete list of apps disabled/uninstalled in the list that you may want to enable and my recommended alternatives. See [Not Disabled/Uninstalled](#not-disabled-uninstalled) for an incomplete list of apps not disabled/uninstalled in the list that you may want to disable, reasons, and my recommended alternatives. I recommend using Droid-fy (`com.looker.droidify`): <https://github.com/Droid-ify/client> from F-Droid: <https://f-droid.org/packages/com.looker.droidify> to install apps from F-Droid, and using Obtainium (`dev.imranr.obtainium.fdroid`): <https://github.com/ImranR98/Obtainium> from F-Droid: <https://f-droid.org/packages/dev.imranr.obtainium.fdroid> from apps from other sources such as GitHub release.

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
com.android.printspooler
com.android.providers.partnerbookmarks
com.android.proxyhandler
com.android.traceur
com.android.virtualization.terminal
com.facebook.appmanager
com.facebook.services
com.facebook.system
com.google.android.adservices.api
com.google.android.aicore
com.google.android.apps.accessibility.voiceaccess
com.google.android.apps.aiwallpapers
com.google.android.apps.messaging
com.google.android.apps.tachyon
com.google.android.as
com.google.android.feedback
com.google.android.gms.location.history
com.google.android.gms.supervision
com.google.android.health.connect.backuprestore
com.google.android.healthconnect.controller
com.google.android.onetimeinitializer
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
com.microsoft.appmanager
com.microsoft.skydrive
com.mygalaxy.service
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
com.samsung.android.app.omcagent
com.samsung.android.app.parentalcare
com.samsung.android.app.routines
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
com.samsung.android.carkey
com.samsung.android.da.daagent
com.samsung.android.dbsc
com.samsung.android.dqagent
com.samsung.android.dynamiclock
com.samsung.android.easysetup
com.samsung.android.fast
com.samsung.android.forest
com.samsung.android.gru
com.samsung.android.hwresourceshare
com.samsung.android.hwresourceshare.storage
com.samsung.android.inputshare
com.samsung.android.intellivoiceservice
com.samsung.android.ipsgeofence
com.samsung.android.kidsinstaller
com.samsung.android.knox.analytics.uploader
com.samsung.android.knox.attestation
com.samsung.android.knox.containercore
com.samsung.android.knox.pushmanager
com.samsung.android.mapsagent
com.samsung.android.mcfds
com.samsung.android.mcfserver
com.samsung.android.mdecservice
com.samsung.android.mdm
com.samsung.android.mdx
com.samsung.android.mdx.kit
com.samsung.android.messaging
com.samsung.android.mobileservice
com.samsung.android.mydevice
com.samsung.android.net.wifi.wifiguider
com.samsung.android.networkdiagnostic
com.samsung.android.rampart
com.samsung.android.rubin.app
com.samsung.android.samsungpass
com.samsung.android.samsungpassautofill
com.samsung.android.samsungpositioning
com.samsung.android.sdk.handwriting
com.samsung.android.sdm.config
com.samsung.android.service.peoplestripe
com.samsung.android.service.stplatform
com.samsung.android.service.tagservice
com.samsung.android.shortcutbackupservice
com.samsung.android.smartcallprovider
com.samsung.android.smartsuggestions
com.samsung.android.smartswitchassistant
com.samsung.android.spayfw
com.samsung.android.stickercenter
com.samsung.android.svcagent
com.samsung.android.themestore
com.samsung.android.video
com.samsung.android.vision.model
com.samsung.android.visionintelligence
com.samsung.android.visual.cloudcore
com.samsung.android.wifi.softap.resources
com.samsung.app.newtrim
com.samsung.cmh
com.samsung.faceservice
com.samsung.internal.systemui.navbar.gestural_no_hint
com.samsung.internal.systemui.navbar.sec_gestural
com.samsung.internal.systemui.navbar.sec_gestural_no_hint
com.samsung.ipservice
com.samsung.petservice
com.samsung.safetyinformation
com.samsung.storyservice
com.samsung.videoscan
com.sec.android.RilServiceModeApp
com.sec.android.app.SecSetupWizard
com.sec.android.app.billing
com.sec.android.app.chromecustomizations
com.sec.android.app.desktoplauncher
com.sec.android.app.factorykeystring
com.sec.android.app.hwmoduletest
com.sec.android.app.magnifier
com.sec.android.app.parser
com.sec.android.app.servicemodeapp
com.sec.android.app.ve.vebgm
com.sec.android.app.vepreload
com.sec.android.app.wlantest
com.sec.android.autodoodle.service
com.sec.android.daemonapp
com.sec.android.desktopmode.uiservice
com.sec.android.easyMover.Agent
com.sec.android.easyonehand
com.sec.android.gallery3d
com.sec.android.mimage.avatarstickers
com.sec.android.mimage.photoretouching
com.sec.android.widgetapp.easymodecontactswidget
com.sec.app.RilErrorNotifier
com.sec.bcservice
com.sec.epdgtestapp
com.sec.factory.camera
com.sec.imslogger
com.sec.location.nsflp2
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
pm disable --user 0 com.android.printspooler
pm disable --user 0 com.android.providers.partnerbookmarks
pm disable --user 0 com.android.proxyhandler
pm disable --user 0 com.android.traceur
pm disable --user 0 com.android.virtualization.terminal
pm disable --user 0 com.facebook.appmanager
pm disable --user 0 com.facebook.services
pm disable --user 0 com.facebook.system
pm disable --user 0 com.google.android.adservices.api
pm disable --user 0 com.google.android.aicore
pm disable --user 0 com.google.android.apps.accessibility.voiceaccess
pm disable --user 0 com.google.android.apps.aiwallpapers
pm disable --user 0 com.google.android.apps.messaging
pm disable --user 0 com.google.android.apps.tachyon
pm disable --user 0 com.google.android.as
pm disable --user 0 com.google.android.feedback
pm disable --user 0 com.google.android.gms.location.history
pm disable --user 0 com.google.android.gms.supervision
pm disable --user 0 com.google.android.health.connect.backuprestore
pm disable --user 0 com.google.android.healthconnect.controller
pm disable --user 0 com.google.android.onetimeinitializer
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
pm disable --user 0 com.microsoft.appmanager
pm disable --user 0 com.microsoft.skydrive
pm disable --user 0 com.mygalaxy.service
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
pm disable --user 0 com.samsung.android.app.omcagent
pm disable --user 0 com.samsung.android.app.parentalcare
pm disable --user 0 com.samsung.android.app.routines
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
pm disable --user 0 com.samsung.android.carkey
pm disable --user 0 com.samsung.android.da.daagent
pm disable --user 0 com.samsung.android.dbsc
pm disable --user 0 com.samsung.android.dqagent
pm disable --user 0 com.samsung.android.dynamiclock
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
pm disable --user 0 com.samsung.android.knox.containercore
pm disable --user 0 com.samsung.android.knox.pushmanager
pm disable --user 0 com.samsung.android.mapsagent
pm disable --user 0 com.samsung.android.mcfds
pm disable --user 0 com.samsung.android.mcfserver
pm disable --user 0 com.samsung.android.mdecservice
pm disable --user 0 com.samsung.android.mdm
pm disable --user 0 com.samsung.android.mdx
pm disable --user 0 com.samsung.android.mdx.kit
pm disable --user 0 com.samsung.android.messaging
pm disable --user 0 com.samsung.android.mobileservice
pm disable --user 0 com.samsung.android.mydevice
pm disable --user 0 com.samsung.android.net.wifi.wifiguider
pm disable --user 0 com.samsung.android.networkdiagnostic
pm disable --user 0 com.samsung.android.rampart
pm disable --user 0 com.samsung.android.rubin.app
pm disable --user 0 com.samsung.android.samsungpass
pm disable --user 0 com.samsung.android.samsungpassautofill
pm disable --user 0 com.samsung.android.samsungpositioning
pm disable --user 0 com.samsung.android.sdk.handwriting
pm disable --user 0 com.samsung.android.sdm.config
pm disable --user 0 com.samsung.android.service.peoplestripe
pm disable --user 0 com.samsung.android.service.stplatform
pm disable --user 0 com.samsung.android.service.tagservice
pm disable --user 0 com.samsung.android.shortcutbackupservice
pm disable --user 0 com.samsung.android.smartcallprovider
pm disable --user 0 com.samsung.android.smartsuggestions
pm disable --user 0 com.samsung.android.smartswitchassistant
pm disable --user 0 com.samsung.android.spayfw
pm disable --user 0 com.samsung.android.stickercenter
pm disable --user 0 com.samsung.android.svcagent
pm disable --user 0 com.samsung.android.themestore
pm disable --user 0 com.samsung.android.video
pm disable --user 0 com.samsung.android.vision.model
pm disable --user 0 com.samsung.android.visionintelligence
pm disable --user 0 com.samsung.android.visual.cloudcore
pm disable --user 0 com.samsung.android.wifi.softap.resources
pm disable --user 0 com.samsung.app.newtrim
pm disable --user 0 com.samsung.cmh
pm disable --user 0 com.samsung.faceservice
pm disable --user 0 com.samsung.internal.systemui.navbar.gestural_no_hint
pm disable --user 0 com.samsung.internal.systemui.navbar.sec_gestural
pm disable --user 0 com.samsung.internal.systemui.navbar.sec_gestural_no_hint
pm disable --user 0 com.samsung.ipservice
pm disable --user 0 com.samsung.petservice
pm disable --user 0 com.samsung.safetyinformation
pm disable --user 0 com.samsung.storyservice
pm disable --user 0 com.samsung.videoscan
pm disable --user 0 com.sec.android.RilServiceModeApp
pm disable --user 0 com.sec.android.app.SecSetupWizard
pm disable --user 0 com.sec.android.app.billing
pm disable --user 0 com.sec.android.app.chromecustomizations
pm disable --user 0 com.sec.android.app.desktoplauncher
pm disable --user 0 com.sec.android.app.factorykeystring
pm disable --user 0 com.sec.android.app.hwmoduletest
pm disable --user 0 com.sec.android.app.magnifier
pm disable --user 0 com.sec.android.app.parser
pm disable --user 0 com.sec.android.app.servicemodeapp
pm disable --user 0 com.sec.android.app.ve.vebgm
pm disable --user 0 com.sec.android.app.vepreload
pm disable --user 0 com.sec.android.app.wlantest
pm disable --user 0 com.sec.android.autodoodle.service
pm disable --user 0 com.sec.android.daemonapp
pm disable --user 0 com.sec.android.desktopmode.uiservice
pm disable --user 0 com.sec.android.easyMover.Agent
pm disable --user 0 com.sec.android.easyonehand
pm disable --user 0 com.sec.android.gallery3d
pm disable --user 0 com.sec.android.mimage.avatarstickers
pm disable --user 0 com.sec.android.mimage.photoretouching
pm disable --user 0 com.sec.android.widgetapp.easymodecontactswidget
pm disable --user 0 com.sec.app.RilErrorNotifier
pm disable --user 0 com.sec.bcservice
pm disable --user 0 com.sec.epdgtestapp
pm disable --user 0 com.sec.factory.camera
pm disable --user 0 com.sec.imslogger
pm disable --user 0 com.sec.location.nsflp2
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
pm uninstall --user 0 com.android.printspooler
pm uninstall --user 0 com.android.providers.partnerbookmarks
pm uninstall --user 0 com.android.proxyhandler
pm uninstall --user 0 com.android.traceur
pm uninstall --user 0 com.android.virtualization.terminal
pm uninstall --user 0 com.facebook.appmanager
pm uninstall --user 0 com.facebook.services
pm uninstall --user 0 com.facebook.system
pm uninstall --user 0 com.google.android.adservices.api
pm uninstall --user 0 com.google.android.aicore
pm uninstall --user 0 com.google.android.apps.accessibility.voiceaccess
pm uninstall --user 0 com.google.android.apps.aiwallpapers
pm uninstall --user 0 com.google.android.apps.messaging
pm uninstall --user 0 com.google.android.apps.tachyon
pm uninstall --user 0 com.google.android.as
pm uninstall --user 0 com.google.android.feedback
pm uninstall --user 0 com.google.android.gms.location.history
pm uninstall --user 0 com.google.android.gms.supervision
pm uninstall --user 0 com.google.android.health.connect.backuprestore
pm uninstall --user 0 com.google.android.healthconnect.controller
pm uninstall --user 0 com.google.android.onetimeinitializer
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
pm uninstall --user 0 com.microsoft.appmanager
pm uninstall --user 0 com.microsoft.skydrive
pm uninstall --user 0 com.mygalaxy.service
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
pm uninstall --user 0 com.samsung.android.app.omcagent
pm uninstall --user 0 com.samsung.android.app.parentalcare
pm uninstall --user 0 com.samsung.android.app.routines
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
pm uninstall --user 0 com.samsung.android.carkey
pm uninstall --user 0 com.samsung.android.da.daagent
pm uninstall --user 0 com.samsung.android.dbsc
pm uninstall --user 0 com.samsung.android.dqagent
pm uninstall --user 0 com.samsung.android.dynamiclock
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
pm uninstall --user 0 com.samsung.android.knox.containercore
pm uninstall --user 0 com.samsung.android.knox.pushmanager
pm uninstall --user 0 com.samsung.android.mapsagent
pm uninstall --user 0 com.samsung.android.mcfds
pm uninstall --user 0 com.samsung.android.mcfserver
pm uninstall --user 0 com.samsung.android.mdecservice
pm uninstall --user 0 com.samsung.android.mdm
pm uninstall --user 0 com.samsung.android.mdx
pm uninstall --user 0 com.samsung.android.mdx.kit
pm uninstall --user 0 com.samsung.android.messaging
pm uninstall --user 0 com.samsung.android.mobileservice
pm uninstall --user 0 com.samsung.android.mydevice
pm uninstall --user 0 com.samsung.android.net.wifi.wifiguider
pm uninstall --user 0 com.samsung.android.networkdiagnostic
pm uninstall --user 0 com.samsung.android.rampart
pm uninstall --user 0 com.samsung.android.rubin.app
pm uninstall --user 0 com.samsung.android.samsungpass
pm uninstall --user 0 com.samsung.android.samsungpassautofill
pm uninstall --user 0 com.samsung.android.samsungpositioning
pm uninstall --user 0 com.samsung.android.sdk.handwriting
pm uninstall --user 0 com.samsung.android.sdm.config
pm uninstall --user 0 com.samsung.android.service.peoplestripe
pm uninstall --user 0 com.samsung.android.service.stplatform
pm uninstall --user 0 com.samsung.android.service.tagservice
pm uninstall --user 0 com.samsung.android.shortcutbackupservice
pm uninstall --user 0 com.samsung.android.smartcallprovider
pm uninstall --user 0 com.samsung.android.smartsuggestions
pm uninstall --user 0 com.samsung.android.smartswitchassistant
pm uninstall --user 0 com.samsung.android.spayfw
pm uninstall --user 0 com.samsung.android.stickercenter
pm uninstall --user 0 com.samsung.android.svcagent
pm uninstall --user 0 com.samsung.android.themestore
pm uninstall --user 0 com.samsung.android.video
pm uninstall --user 0 com.samsung.android.vision.model
pm uninstall --user 0 com.samsung.android.visionintelligence
pm uninstall --user 0 com.samsung.android.visual.cloudcore
pm uninstall --user 0 com.samsung.android.wifi.softap.resources
pm uninstall --user 0 com.samsung.app.newtrim
pm uninstall --user 0 com.samsung.cmh
pm uninstall --user 0 com.samsung.faceservice
pm uninstall --user 0 com.samsung.internal.systemui.navbar.gestural_no_hint
pm uninstall --user 0 com.samsung.internal.systemui.navbar.sec_gestural
pm uninstall --user 0 com.samsung.internal.systemui.navbar.sec_gestural_no_hint
pm uninstall --user 0 com.samsung.ipservice
pm uninstall --user 0 com.samsung.petservice
pm uninstall --user 0 com.samsung.safetyinformation
pm uninstall --user 0 com.samsung.storyservice
pm uninstall --user 0 com.samsung.videoscan
pm uninstall --user 0 com.sec.android.RilServiceModeApp
pm uninstall --user 0 com.sec.android.app.SecSetupWizard
pm uninstall --user 0 com.sec.android.app.billing
pm uninstall --user 0 com.sec.android.app.chromecustomizations
pm uninstall --user 0 com.sec.android.app.desktoplauncher
pm uninstall --user 0 com.sec.android.app.factorykeystring
pm uninstall --user 0 com.sec.android.app.hwmoduletest
pm uninstall --user 0 com.sec.android.app.magnifier
pm uninstall --user 0 com.sec.android.app.parser
pm uninstall --user 0 com.sec.android.app.servicemodeapp
pm uninstall --user 0 com.sec.android.app.ve.vebgm
pm uninstall --user 0 com.sec.android.app.vepreload
pm uninstall --user 0 com.sec.android.app.wlantest
pm uninstall --user 0 com.sec.android.autodoodle.service
pm uninstall --user 0 com.sec.android.daemonapp
pm uninstall --user 0 com.sec.android.desktopmode.uiservice
pm uninstall --user 0 com.sec.android.easyMover.Agent
pm uninstall --user 0 com.sec.android.easyonehand
pm uninstall --user 0 com.sec.android.gallery3d
pm uninstall --user 0 com.sec.android.mimage.avatarstickers
pm uninstall --user 0 com.sec.android.mimage.photoretouching
pm uninstall --user 0 com.sec.android.widgetapp.easymodecontactswidget
pm uninstall --user 0 com.sec.app.RilErrorNotifier
pm uninstall --user 0 com.sec.bcservice
pm uninstall --user 0 com.sec.epdgtestapp
pm uninstall --user 0 com.sec.factory.camera
pm uninstall --user 0 com.sec.imslogger
pm uninstall --user 0 com.sec.location.nsflp2
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

Usage:
1. Install Hail: <https://github.com/aistra0528/Hail> from F-Droid <https://f-droid.org/packages/com.aistra.hail>.
2. Start Shizuku. See [Shizuku](#shizuku) for more information.
2. Copy the code block below.
2. Open Hail.
2. Go to `Settings > Work mode` and select `Shizuku - Disable`.
2. Go to `Home`, click three dots at the top right corner, click `Import app > Import from Clipboard`.

```
["android.autoinstalls.config.samsung","com.android.apps.tag","com.android.bips","com.android.bluetoothmidiservice","com.android.calllogbackup","com.android.dreams.phototable","com.android.egg","com.android.hotwordenrollment.okgoogle","com.android.hotwordenrollment.xgoogle","com.android.internal.systemui.navbar.gestural","com.android.printspooler","com.android.providers.partnerbookmarks","com.android.proxyhandler","com.android.traceur","com.android.virtualization.terminal","com.facebook.appmanager","com.facebook.services","com.facebook.system","com.google.android.adservices.api","com.google.android.aicore","com.google.android.apps.accessibility.voiceaccess","com.google.android.apps.aiwallpapers","com.google.android.apps.messaging","com.google.android.apps.tachyon","com.google.android.as","com.google.android.feedback","com.google.android.gms.location.history","com.google.android.gms.supervision","com.google.android.health.connect.backuprestore","com.google.android.healthconnect.controller","com.google.android.onetimeinitializer","com.google.android.partnersetup","com.google.android.printservice.recommendation","com.google.android.projection.gearhead","com.google.android.safetycenter.resources","com.google.android.setupwizard","com.google.android.tts","com.google.android.youtube","com.google.ar.core","com.google.mainline.adservices","com.google.mainline.telemetry","com.hiya.star","com.microsoft.appmanager","com.microsoft.skydrive","com.mygalaxy.service","com.samsung.SMT","com.samsung.SMT.lang_en_us_l03","com.samsung.SMT.lang_zh_cn_l02","com.samsung.SMT.lang_zh_hk_f00","com.samsung.SMT.lang_zh_tw_f00","com.samsung.aasaservice","com.samsung.accessory.budsunitemgr","com.samsung.android.accessibility.talkback","com.samsung.android.aicore","com.samsung.android.aircommandmanager","com.samsung.android.allshare.service.mediashare","com.samsung.android.app.camera.sticker.facearavatar.preload","com.samsung.android.app.omcagent","com.samsung.android.app.parentalcare","com.samsung.android.app.routines","com.samsung.android.app.smartcapture","com.samsung.android.app.taskedge","com.samsung.android.app.watchmanagerstub","com.samsung.android.aremoji","com.samsung.android.aremojieditor","com.samsung.android.authfw","com.samsung.android.aware.service","com.samsung.android.bbc.bbcagent","com.samsung.android.beaconmanager","com.samsung.android.bixby.agent","com.samsung.android.bixby.wakeup","com.samsung.android.bixbyvision.framework","com.samsung.android.carkey","com.samsung.android.da.daagent","com.samsung.android.dbsc","com.samsung.android.dqagent","com.samsung.android.dynamiclock","com.samsung.android.easysetup","com.samsung.android.fast","com.samsung.android.forest","com.samsung.android.gru","com.samsung.android.hwresourceshare","com.samsung.android.hwresourceshare.storage","com.samsung.android.inputshare","com.samsung.android.intellivoiceservice","com.samsung.android.ipsgeofence","com.samsung.android.kidsinstaller","com.samsung.android.knox.analytics.uploader","com.samsung.android.knox.attestation","com.samsung.android.knox.containercore","com.samsung.android.knox.pushmanager","com.samsung.android.mapsagent","com.samsung.android.mcfds","com.samsung.android.mcfserver","com.samsung.android.mdecservice","com.samsung.android.mdm","com.samsung.android.mdx","com.samsung.android.mdx.kit","com.samsung.android.messaging","com.samsung.android.mobileservice","com.samsung.android.mydevice","com.samsung.android.net.wifi.wifiguider","com.samsung.android.networkdiagnostic","com.samsung.android.rampart","com.samsung.android.rubin.app","com.samsung.android.samsungpass","com.samsung.android.samsungpassautofill","com.samsung.android.samsungpositioning","com.samsung.android.sdk.handwriting","com.samsung.android.sdm.config","com.samsung.android.service.peoplestripe","com.samsung.android.service.stplatform","com.samsung.android.service.tagservice","com.samsung.android.shortcutbackupservice","com.samsung.android.smartcallprovider","com.samsung.android.smartsuggestions","com.samsung.android.smartswitchassistant","com.samsung.android.spayfw","com.samsung.android.stickercenter","com.samsung.android.svcagent","com.samsung.android.themestore","com.samsung.android.video","com.samsung.android.vision.model","com.samsung.android.visionintelligence","com.samsung.android.visual.cloudcore","com.samsung.android.wifi.softap.resources","com.samsung.app.newtrim","com.samsung.cmh","com.samsung.faceservice","com.samsung.internal.systemui.navbar.gestural_no_hint","com.samsung.internal.systemui.navbar.sec_gestural","com.samsung.internal.systemui.navbar.sec_gestural_no_hint","com.samsung.ipservice","com.samsung.petservice","com.samsung.safetyinformation","com.samsung.storyservice","com.samsung.videoscan","com.sec.android.RilServiceModeApp","com.sec.android.app.SecSetupWizard","com.sec.android.app.billing","com.sec.android.app.chromecustomizations","com.sec.android.app.desktoplauncher","com.sec.android.app.factorykeystring","com.sec.android.app.hwmoduletest","com.sec.android.app.magnifier","com.sec.android.app.parser","com.sec.android.app.servicemodeapp","com.sec.android.app.ve.vebgm","com.sec.android.app.vepreload","com.sec.android.app.wlantest","com.sec.android.autodoodle.service","com.sec.android.daemonapp","com.sec.android.desktopmode.uiservice","com.sec.android.easyMover.Agent","com.sec.android.easyonehand","com.sec.android.gallery3d","com.sec.android.mimage.avatarstickers","com.sec.android.mimage.photoretouching","com.sec.android.widgetapp.easymodecontactswidget","com.sec.app.RilErrorNotifier","com.sec.bcservice","com.sec.epdgtestapp","com.sec.factory.camera","com.sec.imslogger","com.sec.location.nsflp2","com.sec.modem.settings","com.sec.phone","com.sec.spp.push","com.sec.unifiedwfc","com.sec.usbsettings","com.sec.vsim.ericssonnsds.webapp","com.sem.factoryapp","com.skms.android.agent","com.swiftkey.swiftkeyconfigurator","com.tencent.soter.soterserver","com.touchtype.swiftkey","com.wsomacp","org.ifaa.aidl.manager"]
```

## Disabled/Uninstalled

This is an incomplete list of apps disabled/uninstalled in the list that you may want to enable and my recommended alternatives. User apps are not listed here since they are all safe to disable/uninstall.

- Android System Intelligence (`com.google.android.as`): Live Caption (`com.tools.livecaptions`) from Google Play: <https://play.google.com/store/apps/details?id=com.tools.livecaptions>.
- Bixby (`com.samsung.android.bixby.agent`), Bixby Vision (`com.samsung.android.visionintelligence`), BixbyVision Framework (`com.samsung.android.bixbyvision.framework`), and Voice wake-up (`com.samsung.android.bixby.wakeup`)
- Digital Wellbeing (`com.samsung.android.forest`): Mindful (`com.mindful.android`): <https://github.com/akaMrNagar/Mindful> from GitHub release.
- Galaxy Themes (`com.samsung.android.themestore`)
- Google Location History (`com.google.android.gms.location.history`)
- Hey Google Hotword (`com.android.hotwordenrollment.xgoogle`) and OK Google Hotword (`com.android.hotwordenrollment.okgoogle`)
- Link to Windows (`com.microsoft.appmanager`) and Link to Windows Service (`com.samsung.android.mdx`): RustDesk (`com.carriez.flutter_hbb`): <https://github.com/rustdesk/rustdesk> from F-Droid: <https://f-droid.org/packages/com.carriez.flutter_hbb>.
- Meet (`com.google.android.apps.tachyon`)
- Meta App Installer (`com.facebook.system`), Meta App Manager (`com.facebook.appmanager`), and Meta Services (`com.facebook.services`): Disabling them won't affect Facebook (`com.facebook.katana`), Messenger (`com.facebook.orca`), or any other app.
- Microsoft SwiftKey Keyboard (`com.touchtype.swiftkey`) and Microsoft SwiftKey Factory Settings (`com.swiftkey.swiftkeyconfigurator`): GBoard (`com.google.android.inputmethod.latin`) from Google Play: <https://play.google.com/store/apps/details?id=com.google.android.inputmethod.latin>.
- Modes and Routines (`com.samsung.android.app.routines`)
- Neayby Service (`com.samsung.android.allshare.service.mediashare`), Nearby devices (`com.samsung.android.mydevice`), Nearby device scanning (`com.samsung.android.easysetup`), Nearby device scanning agent (`com.samsung.android.beaconmanager`)
- OneDrive (`com.microsoft.skydrive`)
- PrintSpooler (`com.android.printspooler`)
- ProxyHandler (`com.android.proxyhandler`)
- Quick Share (`com.samsung.android.app.sharelive`), Quick Share Agent (`com.samsung.android.aware.service`), Quick Share Connectivity (`com.samsung.android.mdx.kit`): LocalSend (`org.localsend.localsend_app`): <https://github.com/localsend/localsend> from F-Droid: <https://f-droid.org/packages/org.localsend.localsend_app>.
- Samsung DeX Home (`com.sec.android.app.desktoplauncher`) and Samsung DeX (`com.sec.android.desktopmode.uiservice`): RustDesk (`com.carriez.flutter_hbb`): <https://github.com/rustdesk/rustdesk> from F-Droid: <https://f-droid.org/packages/com.carriez.flutter_hbb>.
- Samsung Pass (`com.samsung.android.samsungpass`) and Autofill with Samsung Pass (`com.samsung.android.samsungpassautofill`): Bitwarden (`com.x8bit.bitwarden`): <https://github.com/bitwarden/android> from F-Droid: <https://droidify.app/app/?id=com.x8bit.bitwarden&repo_address=https://mobileapp.bitwarden.com/fdroid/repo>.
- Samsung PaymentFramework (`com.samsung.android.spayfw`)
- Smart Call (`com.samsung.android.smartcallprovider`) and Hiya Service (`com.hiya.star`)
- Smart Switch Agent (`com.sec.android.easyMover.Agent`)
- SmartThings Companion (`com.samsung.android.service.stplatform`)
- Speech Recognition and Synthesis from Google (`com.google.android.tts`): SherpaTTS (`org.woheller69.ttsengine`): <https://github.com/woheller69/ttsEngine> from F-Droid: <https://f-droid.org/packages/org.woheller69.ttsengine>.
- Studio (`com.sec.android.app.vepreload`): Miniter (`org.mlm.miniter`): <https://github.com/mlm-games/Miniter> from F-Droid: <https://f-droid.org/packages/org.mlm.miniter>.
- Tags (`com.android.apps.tag`)
- TalkBack (`com.samsung.android.accessibility.talkback`)
- Tasks (`com.samsung.android.app.taskedge`) and People (`com.samsung.android.service.peoplestripe`) of Edge panels
- Terminal (`com.android.virtualization.terminal`): It's not usable on Samsung.
- Video Player (`com.samsung.android.video`): VLC (`org.videolan.vlc`): <https://code.videolan.org/videolan/vlc-android> from F-Droid: <https://f-droid.org/packages/org.videolan.vlc>.
- Voice Access (`com.google.android.apps.accessibility.voiceaccess`)
- Weather (`com.sec.android.daemonapp`): Weather (`org.breezyweather`): <https://github.com/breezy-weather/breezy-weather> from F-Droid: <https://f-droid.org/packages/org.breezyweather>.
- WiFi Calling (`com.sec.unifiedwfc`)
- YouTube (`com.google.android.youtube`): PipePipe (`InfinityLoop1309.NewPipeEnhanced`): <https://github.com/InfinityLoop1308/PipePipe> from F-Droid: <https://f-droid.org/packages/InfinityLoop1309.NewPipeEnhanced> or GitHub release (recommended due to frequent updates).

## Not Disabled/Uninstalled

This is an incomplete list of apps not disabled/uninstalled in the list that you may want to disable, reasons, and my recommended alternatives. User apps are not listed here since they are all safe to disable/uninstall.

- Adapt sound (`com.sec.hearingadjust`) and Sound quality and effects (`com.sec.android.app.soundalive`)
- Camera (`com.sec.android.app.camera`)
- Chrome (`com.android.chrome`): Firefox (`org.mozilla.firefox`): <https://github.com/mozilla-mobile/firefox-android> from Google Play: <https://play.google.com/store/apps/details?id=org.mozilla.firefox>, or Brave (`com.brave.browser`): <https://github.com/brave/brave-browser> from Google Play: <https://play.google.com/store/apps/details?id=com.brave.browser>.
- Find My Mobile (`com.samsung.android.fmm`)
- Galaxy Store (`com.sec.android.app.samsungapps`)
- Game Booster (`com.samsung.android.game.gametools`) and Game Optimizing Service (`com.samsung.android.game.gos`): because Gaming Hub (`com.samsung.android.game.gamehome`) depends on it.
- Gemini (`com.google.android.apps.bard`)
- Gmail (`com.google.android.gm`): Thunderbird (`net.thunderbird.android`): <https://github.com/thunderbird/thunderbird-android> from F-Droid: <https://f-droid.org/packages/net.thunderbird.android>, Proton Mail (`ch.protonmail.android`): <https://github.com/ProtonMail/android-mail> from Google Play: <https://play.google.com/store/apps/details?id=ch.protonmail.android>, or Tuta Mail (`de.tutao.tutanota`): <https://github.com/tutao/tutanota> from F-Droid: <https://f-droid.org/packages/de.tutao.tutanota>.
- Google (`com.google.android.googlequicksearchbox`): CircleToSearch (`com.akslabs.circletosearch`): <https://github.com/AKS-Labs/CircleToSearch> from F-Droid: <https://f-droid.org/packages/com.akslabs.circletosearch>, and Firefox (`org.mozilla.firefox`): <https://github.com/mozilla-mobile/firefox-android> from Google Play: <https://play.google.com/store/apps/details?id=org.mozilla.firefox>, or Brave (`com.brave.browser`): <https://github.com/brave/brave-browser> from Google Play: <https://play.google.com/store/apps/details?id=com.brave.browser>.
- Live Transcribe & Sound Notifications (`com.google.audio.hearing.visualization.accessibility.scribe`)
- Maps (`com.google.android.apps.maps`): GMaps WV (`us.spotco.maps`): <https://github.com/woheller69/maps> from F-Droid: <https://f-droid.org/packages/us.spotco.maps>, or OsmAnd~ (`net.osmand.plus`): <https://github.com/osmandapp/OsmAnd> from F-Droid: <https://droidify.app/app/?id=net.osmand.plus&repo_address=https://guardianproject-wind.s3.amazonaws.com/fdroid/repo>.
- Reminder (`com.samsung.android.app.reminder`), Clipboard edge (`com.samsung.android.app.clipboardedge`) Tools (`com.sec.android.app.quicktool`), and Samsung Keyboard (`com.samsung.android.honeyboard`) (because Clipboard edge depends on Samsung Keyboard): Glide (`com.dagimg.glide`): <https://github.com/dagimg-dot/Glide> from GitHub release, SmartEdge (`com.imi.smartedge.sidebar.panel`): <https://github.com/Imtiaz-Official/Smart-Edge> from F-Droid: <https://f-droid.org/packages/com.imi.smartedge.sidebar.panel> or GitHub release (recommended due to frequent updates), and GBoard (`com.google.android.inputmethod.latin`) from Google Play: <https://play.google.com/store/apps/details?id=com.google.android.inputmethod.latin>.
- Samsung Account (`com.osp.app.signin`), Samsung Cloud (`com.samsung.android.scloud`), and Samsung Cloud Assistant (`com.samsung.android.scpm`)
- Samsung PaymentFramework (`com.samsung.android.spay`)
- Secure Folder (`com.samsung.knox.securefolder`)

## Shizuku

Shizuku is an Android app that allows other apps to use system-level APIs that require ADB/root privileges. I recommend using the <https://github.com/thedjchi/Shizuku> fork and manage its installation using <https://github.com/ImranR98/Obtainium>. Please read the official wiki: <https://github.com/thedjchi/Shizuku/wiki> for setup, info, and troubleshooting steps.

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

## Credits

- Universal Android Debloater GUI: <https://github.com/0x192/universal-android-debloater>, especially <https://raw.githubusercontent.com/0x192/universal-android-debloater/refs/heads/main/resources/assets/uad_lists.json>
- Shizuku: <https://github.com/thedjchi/Shizuku>
- Hail: <https://github.com/aistra0528/Hail>

## License

This repo is licensed under CC BY 4.0. See [LICENSE.txt](LICENSE.txt) for the legal code.
