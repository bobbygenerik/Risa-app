import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import 'package:iptv_player/models/channel.dart';
import 'package:iptv_player/models/program.dart';
import 'package:iptv_player/services/http_client_service.dart';
import 'package:iptv_player/services/incremental_epg_service.dart';
import 'package:iptv_player/utils/app_theme.dart';
import 'package:iptv_player/utils/image_failure_cache.dart';
import 'package:iptv_player/utils/image_url_helper.dart';
import 'package:iptv_player/utils/logo_image_cache.dart';
import 'package:iptv_player/widgets/brand_badge.dart';
import 'package:iptv_player/widgets/tv_focusable.dart';

/// Data class for EPG information to minimize rebuilds.

part 'channel_card/epg_card_data.dart';
part 'channel_card/live_tv_channel_card.dart';
part 'channel_card/channel_logo_widget.dart';

