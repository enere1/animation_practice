import 'package:flutter/material.dart';

class AnimatedCrossFadeExample extends StatefulWidget {
  const AnimatedCrossFadeExample({Key? key}) : super(key: key);

  @override
  State<AnimatedCrossFadeExample> createState() =>
      _AnimatedCrossFadeExampleState();
}

class _AnimatedCrossFadeExampleState extends State<AnimatedCrossFadeExample> {

  bool _isFirstWidgetVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimatedCrossFadeExample'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              _isFirstWidgetVisible = !_isFirstWidgetVisible;
            });
          },
          child: AnimatedCrossFade(
            firstCurve: Curves.bounceIn,
            secondCurve: Curves.bounceOut,
            firstChild: Container(
              color: Colors.blueGrey,
              height: 200,
              width: 200,
              child: Image.asset('assets/dog.png'),
            ),
            secondChild: Container(
              color: Colors.red,
              height: 200,
              width: 200,
              child: Image.asset('assets/jerry.png'),
            ),
            crossFadeState: _isFirstWidgetVisible ? CrossFadeState.showFirst : CrossFadeState.showSecond,
            duration: Duration(milliseconds: 1000),
          ),
        ),
      ),
    );
  }
}
