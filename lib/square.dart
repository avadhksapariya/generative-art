import 'package:flutter/material.dart';

class Square extends StatelessWidget {
  const Square({super.key});

  @override
  Widget build(BuildContext context) {
    return ColoredBox(color: Colors.white, child: SizedBox.expand(child: CustomPaint(painter: SquareCustomPainter())));
  }
}

class SquareCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint =
        Paint()
          ..color = Colors.black
          ..style = PaintingStyle.stroke
          ..strokeWidth = 3.0;

    final center = Offset(size.width / 2, size.height / 2);

    final side = size.shortestSide * 0.8;

    canvas.drawRect(Rect.fromCenter(center: center, width: side, height: side), paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
