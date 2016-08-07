#!/bin/bash

#######################################
#         Main variables block        #
#######################################

# OpenWRT version to build: string (aa/altitude_adjustment, bb/barrier_breaker, cc/chaos_calmer)
BUILDER_OPENWRT_VERSION="cc";
# SoC device to build
BUILDER_OPENWRT_SOC="";
# Flash memory type to build
BUILDER_OPENWRT_FLASH="";
# Device profile to build
BUILDER_OPENWRT_PROFILE="";

#######################################
#       Package variables block       #
#######################################

# Tools (...): boolean
FUNCTION_TOOLS_STATUS=true;
# LuCi: boolean
FUNCTION_LUCI_STATUS=true;
# LuCi option: array (https failsafe)
FUNCTION_LUCI_OPT=('https failsafe');
# Commands (luci-app-commands): boolean
FUNCTION_COMMANDS_STATUS=true;
# Diagnostics (luci-app-diag-core): boolean
FUNCTION_DIAGNOSTICS_STATUS=true;
# Statistics (luci-app-statistics): boolean
FUNCTION_STATISTICS_STATUS=false;
# Networking (ip): boolean
FUNCTION_NETWORKING_STATUS=true;
# IPv6 (kmod-ipv6): boolean
FUNCTION_IPV6_STATUS=true;
# IPv6 option: array (dslite l2tp)
FUNCTION_IPV6_OPT=('dslite l2tp');
# Firewall (iptables ip6tables): boolean
FUNCTION_FIREWALL_STATUS=true;
# DHCP (dnsmasq dnsmasq-dhcpv6): boolean
FUNCTION_DHCP_STATUS=true;
# Zeroconf option: array (hnet miniupnpd minidlna mdnsresponder)
FUNCTION_ZEROCONF_OPT=('miniupnpd');
# PPP (ppp): boolean
FUNCTION_PPP_STATUS=false;
# 3G/UMTS (comgt): boolean
FUNCTION_3GUMTS_STATUS=false;
# WiFi (iw): boolean
FUNCTION_WIFI_STATUS=true;
# Relay (relayd): boolean
FUNCTION_RELAY_STATUS=true;
# Multi-WAN (multiwan): boolean
FUNCTION_MULTIWAN_STATUS=false;
# QOS (qos-scripts): boolean
FUNCTION_QOS_STATUS=true;
# SQM (sqm-scripts): boolean
FUNCTION_SQM_STATUS=true;
# WOL (etherwake): boolean
FUNCTION_WOL_STATUS=true;
# DDNS (ddns-scripts): boolean
FUNCTION_DDNS_STATUS=true;
# VPN option: array (openvpn vpnc ipsec openconnect pptp)
FUNCTION_VPN_OPT=('openvpn');
# SSH option: array (dropbear openssh)
FUNCTION_SSH_OPT=('dropbear');
# USB (kmod-usb-core): boolean
FUNCTION_USB_STATUS=true;
# USB option: array (usb2 ohci uhci)
FUNCTION_USB_OPT=('usb2 ohci');
# Dongle option: array (net serial)
FUNCTION_DONGLE_OPT=('');
# Video option: array (basic gspca mjpg)
FUNCTION_VIDEO_OPT=('');
# Audio (kmod-usb-audio) boolean
FUNCTION_AUDIO_STATUS=false;
# Audio option: array (pulseaudio portaudio)
FUNCTION_AUDIO_OPT=('');
# Printer (kmod-usb-printer)
FUNCTION_PRINTER_STATUS=false;
# Printer option: array (p910nd cups)
FUNCTION_PRINTER_OPT=('');
# Storage (kmod-usb-storage): boolean
FUNCTION_STORAGE_STATUS=true;
# Storage option: array (card hdd ext hfs ntfs vfat f2fs)
FUNCTION_STORAGE_OPT=('card hdd ext vfat');
# NAS option: array (sshfs smb nfs afp)
FUNCTION_NAS_OPT=('sshfs');
# Extra Packages: boolean, string
FUNCTION_EXTRA_STATUS=true;
FUNCTION_EXTRA_PKG='nano screen';
FUNCTION_EXTRA_FILES='files/extra';
