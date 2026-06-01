part of '../main.dart';

class _ErrorHandler {
  static final _errorNotifier = ValueNotifier<_AppError?>(null);
  static _AppError? _pendingError;
  static bool _errorDispatchScheduled = false;

  static void reportError(Object error, StackTrace stack) {
    // Filter out HTTP 429 (rate limit) errors from image loading
    // These are handled gracefully by error widgets, no need to show a global error
    final errorString = error.toString();
    if (_shouldSuppressError(errorString)) {
      debugLog('Suppressed network/image error: $error');
      return;
    }

    debugLog('Unhandled app error: $error');
    debugLog(stack.toString());
    _pendingError = _AppError(error, stack);

    final binding = WidgetsBinding.instance;

    if (_errorDispatchScheduled) {
      return;
    }

    _errorDispatchScheduled = true;
    binding.addPostFrameCallback((_) {
      _errorDispatchScheduled = false;
      final pending = _pendingError;
      if (pending == null) {
        return;
      }
      _pendingError = null;
      _errorNotifier.value = pending;
    });
    // Optional: Could send error to analytics/crash service in production
  }

  static Widget wrapWithErrorListener(Widget child) {
    return ValueListenableBuilder<_AppError?>(
      valueListenable: _errorNotifier,
      builder: (context, appError, _) {
        if (appError != null) {
          return _GlobalErrorScreen(
            error: appError,
            onDismiss: () => _errorNotifier.value = null,
          );
        }
        return child;
      },
    );
  }
}

class _AppError {
  final Object error;
  final StackTrace stack;
  _AppError(this.error, this.stack);
}

class _GlobalErrorScreen extends StatelessWidget {
  final _AppError error;
  final VoidCallback onDismiss;
  const _GlobalErrorScreen({required this.error, required this.onDismiss});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en', ''),
      ],
      theme: AppTheme.darkTheme,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(32.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.error_outline,
                    color: Colors.redAccent, size: 80),
                const SizedBox(height: 24),
                Text(
                  'Something went wrong',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(height: 16),
                Text(
                  error.error.toString(),
                  style: Theme.of(
                    context,
                  ).textTheme.bodyLarge?.copyWith(color: Colors.redAccent),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 24),
                Focus(
                  autofocus: false,
                  child: Builder(
                    builder: (context) {
                      final isFocused = Focus.of(context).hasFocus;
                      return AnimatedScale(
                        scale: isFocused ? TVFocusStyle.focusScale : 1.0,
                        duration: TVFocusStyle.animationDuration,
                        child: AnimatedContainer(
                          duration: TVFocusStyle.animationDuration,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            boxShadow: isFocused
                                ? TVFocusStyle.focusedShadow
                                : TVFocusStyle.defaultShadow,
                          ),
                          child: ElevatedButton(
                            onPressed: onDismiss,
                            child: const Text('Dismiss'),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
