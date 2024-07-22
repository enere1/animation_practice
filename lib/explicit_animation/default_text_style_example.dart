import 'package:flutter/material.dart';

class DefaultTextStyleExample extends StatefulWidget {
  const DefaultTextStyleExample({Key? key}) : super(key: key);

  @override
  State<DefaultTextStyleExample> createState() =>
      _DefaultTextStyleExampleState();
}

class _DefaultTextStyleExampleState extends State<DefaultTextStyleExample>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<TextStyle> _animation;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
    _animation = TextStyleTween(
      begin: TextStyle(fontSize: 32.0, color: Colors.blue),
      end: TextStyle(fontSize: 50.0, color: Colors.red, fontWeight: FontWeight.w800),
    ).animate(_controller);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DefaultTextStyleExample'),
      ),
      body: DefaultTextStyleTransition(
        style: _animation,
        child: Center(child: Text('hi')),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _controller.forward();
        },
      ),
    );
  }
}
