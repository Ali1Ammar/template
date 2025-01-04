import 'package:flutter/material.dart';

class AnimatedHide extends StatelessWidget {
  const AnimatedHide({
    required this.show,
    required this.child,
    super.key,
    this.axis,
    this.size,
  });
  final bool show;
  final Widget child;
  final Axis? axis;
  final Size? size;

  @override
  Widget build(BuildContext context) {
    return AnimatedCrossFade(
      duration: const Duration(milliseconds: 300),
      firstChild: child,
      secondChild: switch (axis) {
        Axis.horizontal => const SizedBox(height: double.maxFinite),
        Axis.vertical => const SizedBox(width: double.maxFinite),
        null => SizedBox.fromSize(
            size: size,
          ),
      },
      crossFadeState:
          show ? CrossFadeState.showFirst : CrossFadeState.showSecond,
    );
  }
}
