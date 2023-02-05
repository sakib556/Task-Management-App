import 'package:flutter/material.dart';

class RadiantGradientMask extends StatelessWidget {
  const RadiantGradientMask({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => const RadialGradient(
        center: Alignment.center,
        radius: 0.5,
        colors: [Color(0xff042E2B),Color(0xff2C8877),],
        tileMode: TileMode.mirror,
      ).createShader(bounds),
      child: child,
    );
  }
}