import 'package:flutter/material.dart';
import 'dart:math' show pi;

class FadeAnimationExample extends StatefulWidget {
  const FadeAnimationExample({Key? key}) : super(key: key);

  @override
  State<FadeAnimationExample> createState() => _FadeAnimationExampleState();
}

class _FadeAnimationExampleState extends State<FadeAnimationExample>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    _animation = Tween<double>(begin: 0, end: 1).animate(_controller);
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
          title: Text('FadeAnimationExample'),
        ),
        body: Center(
          child: FadeTransition(
              opacity: _animation,
              child: Container(
                color: Colors.red,
                width: 200,
                height: 200,
                child: Image.asset('assets/tom.png'),
              )
          ),
        ),

    );
  }
}
