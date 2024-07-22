import 'package:flutter/material.dart';

class AnimatedContainerExample extends StatefulWidget {
  const AnimatedContainerExample({Key? key}) : super(key: key);

  @override
  State<AnimatedContainerExample> createState() => _AnimatedContainerExampleState();
}

class _AnimatedContainerExampleState extends State<AnimatedContainerExample> {
  double width = 100;
  double height = 100;
  double radius = 20;
  Color color = Colors.orange;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimatedContainer'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: (){
            setState(() {
              width = 300;
              height = 300;
              color = Colors.grey;
              radius = 10;
            });
          },
          child: AnimatedContainer(
            width: width,
            height: height,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(radius)
            ),
            duration: Duration(milliseconds: 500),
            child: Image.asset(
              'assets/jerry.png'
            ),
          ),
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            width = 100;
            height = 100;
            color = Colors.orange;
            radius = 20;
          });
        },
      ),
    );
  }
}
