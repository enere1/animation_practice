import 'package:flutter/material.dart';

class CustomerPainterExample extends StatefulWidget {
  const CustomerPainterExample({Key? key}) : super(key: key);

  @override
  State<CustomerPainterExample> createState() => _CustomerPainterExampleState();
}

class _CustomerPainterExampleState extends State<CustomerPainterExample>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _sizeAnimation;
  late Animation<Color?> _corlorAnimation;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
    _sizeAnimation = Tween<double>(begin: 150, end: 250).animate(_controller);
    _corlorAnimation = ColorTween(begin: Colors.red, end: Colors.orange)
        .animate(CurvedAnimation(parent: _controller, curve: Curves.easeIn));
    _controller.repeat(reverse: true);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CustomerPainterExample'),
      ),
      body: Center(
        child: AnimatedBuilder(
          animation: _controller,
          builder: (BuildContext context, Widget? child) {
            return CustomPaint(
              painter: CirclePainter(
                size: _sizeAnimation.value,
                color: _corlorAnimation.value != null ? _corlorAnimation.value! : Colors.red
              ),
              size: const Size.square(200),
            );
          },
        ),
      ),
    );
  }
}

class CirclePainter extends CustomPainter {

  final double _size;
  final Color _color;

  CirclePainter({super.repaint, required double size, required Color color})
      : _size = size,
        _color = color;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    paint.color = _color;
    paint.style = PaintingStyle.fill;
    canvas.drawCircle(Offset(size.width / 2, size.height / 2), _size, paint);
  }

  @override
  bool shouldRepaint(CirclePainter oldDelegate) {
    return oldDelegate._color != _color || oldDelegate._size != _size;

  }

}