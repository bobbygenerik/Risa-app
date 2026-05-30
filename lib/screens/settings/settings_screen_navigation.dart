part of '../settings_screen.dart';

extension SettingsScreenNavigation on _SettingsScreenState {
  void _handleCategorySelected(int index) {
    if (_selectedIndex == index) return;
    setState(() => _selectedIndex = index);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_contentScrollController.hasClients) {
        _contentScrollController.jumpTo(0);
      }
    });
  }

  Future<void> _handleBackToHome() async {
    final router = GoRouter.of(context);
    final shouldLeave = await _confirmLeaveWhileLoading();
    if (!context.mounted) {
      return;
    }
    if (shouldLeave) {
      router.go('/home');
    }
  }

  Future<bool> _confirmLeaveWhileLoading() async {
    final channelProvider =
        Provider.of<ChannelProvider>(context, listen: false);
    if (!channelProvider.isLoading) {
      return true;
    }
    final result = await showDialog<bool>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Playlist still saving'),
          content: const Text(
              'Saving is still in progress. Leaving now may interrupt it.'),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(false),
              child: const Text('Stay'),
            ),
            TextButton(
              onPressed: () => Navigator.of(context).pop(true),
              child: const Text('Leave'),
            ),
          ],
        );
      },
    );
    return result ?? false;
  }

  void _requestContentFocus() {
    if (_contentScrollController.hasClients) {
      _contentScrollController.jumpTo(0);
    }
    FocusNode? target;
    switch (_selectedIndex) {
      case 0:
        target = _lastGeneralFocusNode ??
            (_playlistInputMethod == 0
                ? _m3uTabFocusNode
                : _xtreamTabFocusNode);
        break;
      case 1:
        target = _playbackFirstFocusNode;
        break;
      case 2:
        target = _aiFirstFocusNode;
        break;
      case 3:
        target = _browseStorageButtonFocusNode;
        break;
    }
    target?.requestFocus();
  }
}
