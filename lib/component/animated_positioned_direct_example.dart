import 'package:flutter/material.dart';

class AnimatedPositionedDirectExample extends StatefulWidget {
  const AnimatedPositionedDirectExample({Key? key}) : super(key: key);

  @override
  State<AnimatedPositionedDirectExample> createState() =>
      _AnimatedPositionedDirectExampleState();
}

class _AnimatedPositionedDirectExampleState
    extends State<AnimatedPositionedDirectExample> {

  double _start = 0;
  double _top = 0;

  void _moveLeft() {
    setState(() {
      _start -= 50;
      if(_start < 0) {
        _start = 0;
      }
    });
  }
  void _moveRight() {
    setState(() {
      _start += 50;
      if(_start > MediaQuery.of(context).size.width - 150) {
        _start = MediaQuery.of(context).size.width - 150;
      }
    });
  }
  void _moveUp() {
    setState(() {
      _top -= 50;
      if(_top < 0) {
        _top = 0;
      }
    });
  }
  void _moveDown() {
    setState(() {
      _top += 50;
      if(_top > MediaQuery.of(context).size.height - 300) {
        _top = MediaQuery.of(context).size.height - 300;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('AnimatedPositionedDirectExample'),
        ),
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Stack(
            children: [
              AnimatedPositionedDirectional(
                start: _start,
                top: _top,
                duration: Duration(milliseconds: 50),
                child: Container(
                  width: 100,
                  height: 100,
                  child: Image.asset('assets/jerry.png'),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(onPressed: _moveLeft, child: Icon(Icons.arrow_left_outlined)),
                    ElevatedButton(onPressed: _moveRight, child: Icon(Icons.arrow_right_outlined)),
                    ElevatedButton(onPressed: _moveUp, child: Icon(Icons.arrow_upward_outlined)),
                    ElevatedButton(onPressed: _moveDown, child: Icon(Icons.arrow_downward_outlined)),

                  ],
                ),
              )
            ],
          ),
        ));
  }
}
