import 'package:flutter/material.dart';

class PositionDirectExample extends StatefulWidget {
  const PositionDirectExample({Key? key}) : super(key: key);

  @override
  State<PositionDirectExample> createState() => PositionDirectExampleState();
}

class PositionDirectExampleState extends State<PositionDirectExample>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<RelativeRect> _animation;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 900));

    _animation = RelativeRectTween(
            begin: RelativeRect.fromLTRB(0, 0, 0, 0),
            end: RelativeRect.fromLTRB(100, 100, 0, 0))
        .animate(_controller);
  }

  void _startAnimation() {
    _controller.reset();
    _controller.forward();
  }

  void _reverseAnimation() {
    _controller.reverse();
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
        title: const Text('PositionDirectExampleState'),
      ),
      body: Stack(
        children: [
          AnimatedBuilder(
            animation: _controller,
            builder: (BuildContext context, Widget? child) {
              return PositionedDirectional(
                top: _animation.value.top,
                bottom: _animation.value.bottom,
                start: _animation.value.left,
                end: _animation.value.right,
                child: Container(
                  color: Colors.red,
                  child: Image.asset('assets/tom.png'),
                ),
              );
            },
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: _startAnimation,
                  child: Icon(Icons.start),
                ),
                ElevatedButton(
                  onPressed: _reverseAnimation,
                  child: Icon(Icons.close),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
