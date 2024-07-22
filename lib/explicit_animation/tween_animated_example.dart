import 'package:flutter/material.dart';

class TweenAnimatedExample extends StatefulWidget {
  const TweenAnimatedExample({Key? key}) : super(key: key);

  @override
  State<TweenAnimatedExample> createState() => _TweenAnimatedExampleState();
}

class _TweenAnimatedExampleState extends State<TweenAnimatedExample> {

  double _opacityLevel = 0.0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('TweenAnimatedExample'),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TweenAnimationBuilder(
                tween: Tween<double>(begin: 0, end: _opacityLevel),
                duration: Duration(seconds: 2),
                builder: (BuildContext context, double value, Widget? child) {
                  return Opacity(opacity: value, child: child);
                },
                child: Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(16.0)),
                ),
              ),
              ElevatedButton(onPressed: (){
                setState(() {
                  _opacityLevel = _opacityLevel == 0.0 ? 1.0 : 0.0;
                });
              }, child: Icon(Icons.add)),
            ],
          ),
        ),
      ),
    );
  }
}
