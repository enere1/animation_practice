import 'package:flutter/material.dart';

class AnimatedPaddingExample extends StatefulWidget {
  const AnimatedPaddingExample({Key? key}) : super(key: key);

  @override
  State<AnimatedPaddingExample> createState() => _AnimatedPaddingExampleState();
}

class _AnimatedPaddingExampleState extends State<AnimatedPaddingExample> {

  final List<String> character = [
    'cheese.png',
    'dog.png',
    'jerry.png',
    'tom.png'
  ];

  @override
  Widget build(BuildContext context) {
    EdgeInsets padding = EdgeInsets.all(18.0);

    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimatedPaddingExample'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: List.generate(4, (index) =>
            AnimatedPadding(
              padding: padding,
              duration: Duration(milliseconds: 500),
              child: Container(
                  color: Colors.amber,
                  child: Image.asset('assets/${character[index]}')),
            )
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            setState(() {
              padding = EdgeInsets.all(32.0);
            });
          });
        },
      ),
    );
  }
}
