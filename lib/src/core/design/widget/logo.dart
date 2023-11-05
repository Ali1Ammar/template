import 'package:flutter/material.dart';

class AppLogo extends StatelessWidget {
  final double size;
  const AppLogo({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: size, height: size, decoration: const FlutterLogoDecoration());
  }
}
