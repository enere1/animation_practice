import 'package:flutter/material.dart';

class AnimatedPhysicalExample extends StatefulWidget {
  const AnimatedPhysicalExample({Key? key}) : super(key: key);

  @override
  State<AnimatedPhysicalExample> createState() =>
      _AnimatedPhysicalExampleState();
}

class _AnimatedPhysicalExampleState extends State<AnimatedPhysicalExample> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('AnimatedPhysicalExample'),
        ),
        body: GestureDetector(
          onTap: () {
            setState(() {
              _isPressed = !_isPressed;
            });
          },
          child: Center(
            child: AnimatedPhysicalModel(
              shape: BoxShape.rectangle,
              elevation: _isPressed ? 90 : 0,
              color: Colors.grey,
              shadowColor: Colors.blueGrey,
              duration: Duration(milliseconds: 400),
              child: Container(
                width: 200,
                height: 200,
                child: Image.asset('assets/tom.png'),
              ),
            ),
          ),
        )
    );
  }
}
