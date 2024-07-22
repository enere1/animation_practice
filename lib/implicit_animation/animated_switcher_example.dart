import 'package:flutter/material.dart';

class AnimatedSwitcherExample extends StatefulWidget {
  const AnimatedSwitcherExample({Key? key}) : super(key: key);

  @override
  State<AnimatedSwitcherExample> createState() =>
      _AnimatedSwitcherExampleState();
}

class _AnimatedSwitcherExampleState extends State<AnimatedSwitcherExample> {
  bool _isFirstWidgetVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('AnimatedCrossFadeExample'),
        ),
        body: Center(
          child: AnimatedSwitcher(
            duration: Duration(milliseconds: 1000),
            child: _isFirstWidgetVisible
                ? ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _isFirstWidgetVisible = !_isFirstWidgetVisible;
                      });
                    },
                    child: Text('login Now'),
                  )
                : CircularProgressIndicator(),
          ),
        ),
    floatingActionButton: FloatingActionButton(
      onPressed: (){
        setState(() {
          _isFirstWidgetVisible = !_isFirstWidgetVisible;
        });

      },
      child: Icon(Icons.add),
    ),
    );
  }
}
