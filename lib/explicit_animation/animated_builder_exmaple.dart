import 'package:flutter/material.dart';
import 'dart:math' show pi;

class AnimatedBuilderExmaple extends StatefulWidget {
  const AnimatedBuilderExmaple({Key? key}) : super(key: key);

  @override
  State<AnimatedBuilderExmaple> createState() => _AnimatedBuilderExmapleState();
}

class _AnimatedBuilderExmapleState extends State<AnimatedBuilderExmaple>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 2))
          ..repeat(reverse: true);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedBuilderExmaple'),
      ),
      body: Center(
        child: AnimatedBuilder(
          animation: _controller,
          builder: (BuildContext context, Widget? child) {
            return Transform.rotate(
              angle: _controller.value * 2 * pi,
              child: Container(
                width: 200,
                height: 200,
                child: Image.asset('assets/dog.png'),
              ),
            );
          },
        ),
      ),
    );
  }
}
