import 'package:flutter/material.dart';

class AnimatedTextExample extends StatefulWidget {
  const AnimatedTextExample({Key? key}) : super(key: key);

  @override
  State<AnimatedTextExample> createState() => _AnimatedTextExampleState();
}

class _AnimatedTextExampleState extends State<AnimatedTextExample> {
  FontWeight fontWeight = FontWeight.w500;
  double fontSize = 45.0;
  Color color = Colors.grey;

  void change() {
    setState(() {
      fontWeight = FontWeight.w800;
      fontSize = 65.0;
      color = Colors.orange;
    });
  }

  void reset() {
    setState(() {
      fontWeight = FontWeight.w500;
      fontSize = 45.0;
      color = Colors.grey;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('AnimatedAlign'),
        ),
        body: Center(
          child: Column(
            children: [
              AnimatedDefaultTextStyle(
                  child: Text('hi'),
                  style: TextStyle(
                    fontWeight: fontWeight,
                    fontSize: fontSize,
                    color: color,
                  ),
                  curve: Curves.bounceOut,
                  duration: Duration(milliseconds: 500)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(onPressed: change, child: Icon(Icons.add)),
                  ElevatedButton(onPressed: reset, child: Icon(Icons.remove)),
                ],
              ),
            ],
          ),
        ));
  }
}
