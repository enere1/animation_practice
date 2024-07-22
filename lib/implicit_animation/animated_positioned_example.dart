import 'package:flutter/material.dart';

class AnimatedPositionedExample extends StatefulWidget {
  const AnimatedPositionedExample({Key? key}) : super(key: key);

  @override
  State<AnimatedPositionedExample> createState() =>
      _AnimatedPositionedExampleState();
}

class _AnimatedPositionedExampleState extends State<AnimatedPositionedExample> {

  bool _startEating = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('AnimatedPositioned'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Stack(
            children: [
              AnimatedPositioned(
                  top: 0,
                  left: 0,
                  child: Container(
                    width: 120,
                    height: 120,
                    color: Colors.transparent,
                    child: Image.asset('assets/cheese.png'),
                  ),
                  duration: const Duration(seconds: 1)),
              AnimatedPositioned(
                  top: 0,
                  left: _startEating ? MediaQuery.of(context).size.width - 150 : 0,
                  child: Container(
                    width: 120,
                    height: 120,
                    color: Colors.transparent,
                    child: Image.asset('assets/jerry.png'),
                  ),
                  duration: const Duration(seconds: 1)),
              AnimatedPositioned(
                  top: _startEating ? MediaQuery.of(context).size.height / 4 : 0,
                  left: _startEating ? MediaQuery.of(context).size.width - 150 : 0,
                  child: Container(
                    width: 120,
                    height: 120,
                    color: Colors.transparent,
                    child: Image.asset('assets/dog.png'),
                  ),
                  duration: const Duration(seconds: 1)),
              AnimatedPositioned(
                  top: _startEating ? MediaQuery.of(context).size.height - 300 : 0,
                  left: 0,
                  child: Container(
                    width: 120,
                    height: 120,
                    color: Colors.transparent,
                    child: Image.asset('assets/tom.png'),
                  ),
                  duration: const Duration(microseconds: 4000))
            ],
          ),
        ),
    floatingActionButton: FloatingActionButton(
      onPressed: (){
        setState(() {
          _startEating = !_startEating;
        });
      },
      child: _startEating ? Icon(Icons.place) : Icon(Icons.back_hand),
    ),
    );
  }
}
