import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:go_router/go_router.dart';
import 'package:iptv_player/services/ai_model_manager.dart';
import 'package:iptv_player/utils/app_theme.dart';
import 'package:iptv_player/utils/snackbar_helper.dart';
import 'package:iptv_player/utils/tv_focus_helper.dart';
import 'package:iptv_player/widgets/brand_button.dart';
import 'package:iptv_player/widgets/compat_pop_scope.dart';
part 'ai_models/ai_models_content.dart';
part 'ai_models/ai_models_widgets.dart';


class AIModelsScreen extends StatefulWidget {
  const AIModelsScreen({super.key});

  @override
  State<AIModelsScreen> createState() => _AIModelsScreenState();
}

class _AIModelsScreenState extends State<AIModelsScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CompatPopScope(
      onWillPop: () async {
        context.go('/home');
        return false;
      },
      child: _buildContent(),
    );
  }

  void _updateAiModelsState(VoidCallback fn) {
    if (!mounted) return;
    setState(fn);
  }
}

