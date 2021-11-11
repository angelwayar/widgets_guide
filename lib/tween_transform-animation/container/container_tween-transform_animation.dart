import 'package:flutter/material.dart';
import 'package:widgets_guide/utils/content/content_widget.dart';

class ContainerTweenTransformAnimation extends StatelessWidget {
  const ContainerTweenTransformAnimation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double _height = MediaQuery.of(context).size.height;
    final double _width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(),
      body: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        clipBehavior: Clip.none,
        children: [
          Align(
            child: TweenAnimationBuilder<double>(
              tween: Tween(begin: 0.0, end: 1.0),
              duration: Duration(milliseconds: 750),
              child: Container(
                height: 600,
                width: 327,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ContentWidgetStatic(),
                    Spacer(),
                    Divider(
                      color: Colors.black,
                      height: 20,
                    ),
                    ContentWidget(),
                    Spacer(),
                  ],
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
              ),
              builder: (context, value, child) {
                return Transform.translate(
                  offset: Offset(0.0, (_height * 0.7) * (1 - value)),
                  child: child,
                );
              },
            ),
          ),
          Positioned(
            top: _height * 0.7,
            child: Container(
              height: 150,
              width: _width,
              alignment: Alignment.topCenter,
              color: Colors.green,
              child: Column(
                children: [
                  CustomPaint(
                    size: const Size(327, 12),
                    painter: WavePainter(),
                  ),
                  Spacer(),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Completo'),
                  ),
                  Spacer(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class WavePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    double xAxis = -1;
    double endXAxis = 10;
    final int symbol = -1;
    int factor = -6;

    /// This instance is for customize your brush like:
    /// color, strokeWidth, fill or stroke, etc..
    final paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    /// This instance is for drawing.
    /// With this the figure is assemble
    final path = Path();

    /// Drawing the figure
    path.moveTo(0, size.height - 20);
    while (endXAxis < size.width) {
      factor *= symbol;

      path.quadraticBezierTo(
          xAxis, size.height + factor, endXAxis, size.height);

      if (xAxis == -1) {
        xAxis = 15;
      } else {
        xAxis += 10;
      }
      endXAxis += 10;
    }
    path.quadraticBezierTo(328, size.height + 6, size.width, size.height - 20);
    path.close();

    /// This method displays the figure on the screen
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
