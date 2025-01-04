import 'package:animations/animations.dart';
import 'package:flutter/material.dart';

enum AppStartupState { data, error, loading }

class AppStartupWidgetAnimation extends StatelessWidget {
  const AppStartupWidgetAnimation({
    required this.onData,
    required this.onError,
    required this.onLoading,
    required this.state,
    super.key,
  });
  final WidgetBuilder onData;
  final WidgetBuilder onError;
  final WidgetBuilder onLoading;
  final AppStartupState state;

  @override
  Widget build(BuildContext context) {
    return PageTransitionSwitcher(
      transitionBuilder: (
        Widget child,
        Animation<double> primaryAnimation,
        Animation<double> secondaryAnimation,
      ) {
        return FadeScaleTransition(
          animation: primaryAnimation,
          child: child,
        );
      },
      child: SizedBox(
        key: ValueKey(state),
        child: switch (state) {
          AppStartupState.data => onData(context),
          AppStartupState.error => onError(context),
          AppStartupState.loading => onLoading(context),
        },
      ),
    );
  }
}
