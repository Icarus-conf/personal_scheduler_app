import 'package:flutter/material.dart';

class WavyWidget extends StatelessWidget {
  const WavyWidget({
    super.key,
    this.top,
    this.left,
    this.right,
    this.bottom,
    this.height,
    this.width,
    this.painter,
  });

  final double? top;
  final double? left;
  final double? right;
  final double? bottom;
  final double? height;
  final double? width;
  final CustomPainter? painter;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: left,
      right: right,
      bottom: bottom,
      child: CustomPaint(
        painter: painter,
        child: SizedBox(
          width: width ?? double.infinity,
          height: height,
        ),
      ),
    );
  }
}
