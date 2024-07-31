import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class IntroPage extends HookWidget {
  const IntroPage({required this.onCompleteAnimation, super.key});
  final VoidCallback onCompleteAnimation;
  @override
  Widget build(BuildContext context) {
    useMemoized(() {
      onCompleteAnimation();
    });
    return const Directionality(
      textDirection: TextDirection.ltr,
      child: MaterialApp(home: FlutterLogo()),
    );
  }
}
