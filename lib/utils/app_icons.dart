import 'package:flutter/material.dart';
import 'package:iptv_player/utils/tv_focus_helper.dart';

/// Standardized icon system for consistent iconography across the app
/// Provides semantic naming and TV-optimized sizing
class AppIcons {
  // Navigation & UI
  static const IconData back = Icons.arrow_back;
  static const IconData close = Icons.close;
  static const IconData menu = Icons.menu;
  static const IconData search = Icons.search;
  static const IconData searchOff = Icons.search_off;
  static const IconData settings = Icons.settings_outlined;
  static const IconData info = Icons.info_outline;
  static const IconData expand = Icons.expand_more;
  static const IconData collapse = Icons.expand_less;

  // Media & Playback
  static const IconData play = Icons.play_arrow;
  static const IconData pause = Icons.pause;
  static const IconData stop = Icons.stop;
  static const IconData replay = Icons.replay;
  static const IconData record = Icons.fiber_manual_record;
  static const IconData liveTV = Icons.live_tv;
  static const IconData tv = Icons.tv;
  static const IconData tvOff = Icons.tv_off;
  static const IconData movie = Icons.movie;
  static const IconData series = Icons.tv;
  static const IconData dvr = Icons.dvr;

  // Content & Actions
  static const IconData favorite = Icons.favorite;
  static const IconData favoriteOutline = Icons.favorite_border;
  static const IconData download = Icons.download;
  static const IconData cloud = Icons.cloud_download;
  static const IconData check = Icons.check;
  static const IconData checkCircle = Icons.check_circle;
  static const IconData add = Icons.add;
  static const IconData remove = Icons.remove;
  static const IconData delete = Icons.delete;
  static const IconData edit = Icons.edit;

  // Time & Schedule
  static const IconData time = Icons.access_time;
  static const IconData alarm = Icons.alarm;
  static const IconData alarmAdd = Icons.alarm_add;
  static const IconData refresh = Icons.refresh;
  static const IconData schedule = Icons.schedule;

  // User & Account
  static const IconData person = Icons.person;
  static const IconData personOutline = Icons.person_outline;
  static const IconData account = Icons.account_circle;

  // Connectivity & Status
  static const IconData link = Icons.link;
  static const IconData linkOff = Icons.link_off;
  static const IconData wifi = Icons.wifi;
  static const IconData wifiOff = Icons.wifi_off;
  static const IconData signal = Icons.signal_cellular_4_bar;

  // Audio & Voice
  static const IconData mic = Icons.mic;
  static const IconData micOff = Icons.mic_off;
  static const IconData micNone = Icons.mic_none;
  static const IconData volume = Icons.volume_up;
  static const IconData volumeOff = Icons.volume_off;

  // Quality & Enhancement
  static const IconData hd = Icons.hd;
  static const IconData fourK = Icons.four_k;
  static const IconData quality = Icons.high_quality;
  static const IconData star = Icons.star;
  static const IconData starOutline = Icons.star_outline;
  static const IconData stars = Icons.stars;

  // System & Technical
  static const IconData error = Icons.error;
  static const IconData warning = Icons.warning;
  static const IconData success = Icons.check_circle;
  static const IconData loading = Icons.hourglass_empty;
  static const IconData autoAwesome = Icons.auto_awesome;

  // File & Storage
  static const IconData folder = Icons.folder;
  static const IconData file = Icons.insert_drive_file;
  static const IconData storage = Icons.storage;
  static const IconData backup = Icons.backup;

  // Standard icon sizes for TV interface
  static const double sizeXs = 12.0;
  static const double sizeSm = 16.0;
  static const double sizeMd = 24.0;
  static const double sizeLg = 32.0;
  static const double sizeXl = 48.0;
  static const double sizeXxl = 64.0;
}

/// Extension on BuildContext for TV-scaled icon widgets
extension AppIconsExtension on BuildContext {
  // TV-scaled icon sizes
  double iconSizeXs() => tvIconSize(AppIcons.sizeXs);
  double iconSizeSm() => tvIconSize(AppIcons.sizeSm);
  double iconSizeMd() => tvIconSize(AppIcons.sizeMd);
  double iconSizeLg() => tvIconSize(AppIcons.sizeLg);
  double iconSizeXl() => tvIconSize(AppIcons.sizeXl);
  double iconSizeXxl() => tvIconSize(AppIcons.sizeXxl);

  // Standard icon widgets with TV scaling
  Widget iconXs(IconData icon, {Color? color}) =>
      Icon(icon, size: iconSizeXs(), color: color);
  Widget iconSm(IconData icon, {Color? color}) =>
      Icon(icon, size: iconSizeSm(), color: color);
  Widget iconMd(IconData icon, {Color? color}) =>
      Icon(icon, size: iconSizeMd(), color: color);
  Widget iconLg(IconData icon, {Color? color}) =>
      Icon(icon, size: iconSizeLg(), color: color);
  Widget iconXl(IconData icon, {Color? color}) =>
      Icon(icon, size: iconSizeXl(), color: color);
  Widget iconXxl(IconData icon, {Color? color}) =>
      Icon(icon, size: iconSizeXxl(), color: color);

  // Semantic icon widgets
  Widget playIcon({Color? color}) => iconMd(AppIcons.play, color: color);
  Widget pauseIcon({Color? color}) => iconMd(AppIcons.pause, color: color);
  Widget favoriteIcon({Color? color}) =>
      iconSm(AppIcons.favorite, color: color);
  Widget favoriteOutlineIcon({Color? color}) =>
      iconSm(AppIcons.favoriteOutline, color: color);
  Widget tvIcon({Color? color}) => iconMd(AppIcons.tv, color: color);
  Widget movieIcon({Color? color}) => iconMd(AppIcons.movie, color: color);
  Widget seriesIcon({Color? color}) => iconMd(AppIcons.series, color: color);
  Widget searchIcon({Color? color}) => iconSm(AppIcons.search, color: color);
  Widget settingsIcon({Color? color}) =>
      iconMd(AppIcons.settings, color: color);
  Widget backIcon({Color? color}) => iconMd(AppIcons.back, color: color);
  Widget infoIcon({Color? color}) => iconSm(AppIcons.info, color: color);
  Widget timeIcon({Color? color}) => iconSm(AppIcons.time, color: color);
  Widget recordIcon({Color? color}) => iconSm(AppIcons.record, color: color);
  Widget replayIcon({Color? color}) => iconSm(AppIcons.replay, color: color);
  Widget refreshIcon({Color? color}) => iconSm(AppIcons.refresh, color: color);
  Widget checkIcon({Color? color}) => iconSm(AppIcons.check, color: color);
  Widget starIcon({Color? color}) => iconXs(AppIcons.star, color: color);
}
