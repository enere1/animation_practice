import 'package:flutter/material.dart';

class AnimatedAlignExample extends StatefulWidget {
  const AnimatedAlignExample({Key? key}) : super(key: key);

  @override
  State<AnimatedAlignExample> createState() => _AnimatedAlignExampleState();
}

class _AnimatedAlignExampleState extends State<AnimatedAlignExample> {
  int jerryPostion = 0;
  int tomPostion = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimatedAlign'),
      ),
      body: Stack(
        children: [
          AnimatedAlign(
            duration: const Duration(milliseconds: 400),
            alignment: getAlignment(jerryPostion+1),
            child: Container(
              color: Colors.transparent,
              width: 100,
              height: 100,
              child: Image.asset('assets/jerry.png'),
            ),
          ),
          AnimatedAlign(
            duration: const Duration(milliseconds: 400),
            alignment: getAlignment(tomPostion),
            child: Container(
              color: Colors.transparent,
              width: 100,
              height: 100,
              child: Image.asset('assets/tom.png'),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            jerryPostion += 1;
            tomPostion += 1;
          });
        },
      ),
    );
  }

  Alignment getAlignment(int position) {
    switch (position) {
      case 0:
        return Alignment.topLeft;
      case 1:
        return Alignment.topCenter;
      case 2:
        return Alignment.topRight;
      case 3:
        return Alignment.centerLeft;
      case 4:
        return Alignment.center;
      case 5:
        return Alignment.centerRight;
      case 6:
        return Alignment.bottomLeft;
      case 7:
        return Alignment.bottomCenter;
      case 8:
        return Alignment.bottomRight;
      default:
        jerryPostion = 0;
        tomPostion = 0;
        return Alignment.topLeft;
    }
  }
}
