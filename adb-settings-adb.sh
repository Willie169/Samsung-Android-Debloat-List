#!/usr/bin/env bash

echo 'settings put global setup_wizard_has_run 1
settings put secure user_setup_complete 1
settings put global device_provisioned 1
device_config put tethering close_quic_connection -1
settings put secure long_press_timeout 250
settings put secure multi_press_timeout 250
settings put secure tap_duration_threshold 0.0
settings put secure touch_blocking_period 0.0
settings put global disable_screen_share_protections_for_apps_and_notifications 1
device_config set_sync_disabled_for_tests persistent
device_config put activity_manager max_phantom_processes 2147483647
settings put global settings_enable_monitor_phantom_procs false
settings put global activity_starts_logging_enabled 0
settings put global bixby_pregranted_permissions 0
settings put secure game_bixby_block 1
settings put secure send_action_app_error 0
settings put system rakuten_denwa 0
settings put system remote_control 0
settings put system send_security_reports 0
' | adb shell
