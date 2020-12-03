import 'package:flutter/material.dart';

class HeaderDiagonal extends StatelessWidget {
  const HeaderDiagonal({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Flexible(
        flex: 2,
        child: Container(
          height: double.infinity,
          width: double.infinity,
          child: CustomPaint(
            painter: _HeaderDiagonalPainter(),
          ),
        ),
      ),
    );
  }
}

class _HeaderDiagonalPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    final path = Path();

    // Properties
    paint.color = Colors.black87;
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 5;

    // Draw
    path.moveTo(0.0, size.height * 0.35);
    path.lineTo(size.width, size.height * 0.30);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
