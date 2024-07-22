import 'package:flutter/material.dart';

class IndexedTransitionStackExample extends StatefulWidget {
  const IndexedTransitionStackExample({Key? key}) : super(key: key);

  @override
  State<IndexedTransitionStackExample> createState() =>
      _IndexedTransitionStackExampleState();
}

class _IndexedTransitionStackExampleState
    extends State<IndexedTransitionStackExample>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _opacityAnimation;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
    _opacityAnimation =
        Tween<double>(begin: 0.0, end: 1.0).animate(_controller);
    _scaleAnimation = Tween<double>(begin: 0.1, end: 1.0).animate(_controller);

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('IndexedTransitionStackExample'),
      ),
      body: IndexedStack(index: index, children: [
        ScaleTransition(
          scale: _scaleAnimation,
          child: FadeTransition(
            opacity: _opacityAnimation,
            child: Center(
              child: Container(
                color: Colors.red,
                width: 100,
                height: 100,
                child: Image.asset('assets/dog.png'),
              ),
            ),
          ),
        ),
        ScaleTransition(
          scale: _scaleAnimation,
          child: Center(
            child: Container(
              color: Colors.blue,
              width: 100,
              height: 100,
              child: Image.asset('assets/tom.png'),
            ),
          ),
        ),
        ScaleTransition(
          scale: _scaleAnimation,
          child: Center(
            child: Container(
              color: Colors.orange,
              width: 100,
              height: 100,
              child: Image.asset('assets/jerry.png'),
            ),
          ),
        ),
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          index += 1;
          if (index == 3) {
            index = 0;
          }
          setState(() {
            _controller.reset();
            _controller.forward();
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
