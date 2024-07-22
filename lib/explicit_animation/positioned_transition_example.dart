import 'package:flutter/material.dart';

class PositionedTransitionExample extends StatefulWidget {
  const PositionedTransitionExample({Key? key}) : super(key: key);

  @override
  State<PositionedTransitionExample> createState() =>
      _PositionedTransitionExampleState();
}

class _PositionedTransitionExampleState
    extends State<PositionedTransitionExample>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<RelativeRect> _jeryyAnimation;
  late Animation<RelativeRect> _tomAnimation;
  late Animation<RelativeRect> _spikeAnimation;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 300));

    _jeryyAnimation = RelativeRectTween(
            begin: RelativeRect.fromLTRB(0, 0, 0, 0),
            end: RelativeRect.fromLTRB(250, 250, 0, 0))
        .animate(_controller);
    _tomAnimation = RelativeRectTween(
            begin: RelativeRect.fromLTRB(0, 0, 0, 0),
            end: RelativeRect.fromLTRB(150, 150, 0, 0))
        .animate(_controller);
    _spikeAnimation = RelativeRectTween(
            begin: RelativeRect.fromLTRB(0, 0, 0, 0),
            end: RelativeRect.fromLTRB(50, 50, 0, 0))
        .animate(_controller);
  }

  void _startAnimation () {
    _controller.reset();
    _controller.forward();
  }

  void _reverseAnimation () {
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
          title: const Text('PositionedTransitionExample'),
        ),
        body: Stack(
          children: [
            PositionedTransition(
              rect: _spikeAnimation,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.blueGrey,
                child: Image.asset('assets/dog.png'),
              ),
            ),
            PositionedTransition(
              rect: _tomAnimation,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.grey,
                child: Image.asset('assets/tom.png'),
              ),
            ),
            PositionedTransition(
              rect: _jeryyAnimation,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.orange,
                child: Image.asset('assets/jerry.png'),
              ),
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
            )
          ],
        ));
  }
}
