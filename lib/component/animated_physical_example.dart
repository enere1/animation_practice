import 'package:flutter/material.dart';

class AnimatedPhysicalExample extends StatefulWidget {
  const AnimatedPhysicalExample({Key? key}) : super(key: key);

  @override
  State<AnimatedPhysicalExample> createState() =>
      _AnimatedPhysicalExampleState();
}

class _AnimatedPhysicalExampleState extends State<AnimatedPhysicalExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('AnimatedPaddingExample'),
        ),
        body: AnimatedPhysicalModel(shape: null,
        elevation: null,
        color: null,
        shadowColor: null,
        duration: null,
        child: null,
          
        )
    );
  }
}
