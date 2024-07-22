import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class RivExample extends StatefulWidget {
  const RivExample({Key? key}) : super(key: key);

  @override
  State<RivExample> createState() => _RivExampleState();
}

class _RivExampleState extends State<RivExample> {

  final List<String> lottiePath = [
    'assets/rive/bear.riv',
    'assets/rive/girl.riv',
    'assets/rive/rating.riv',
  ];
  final pageController = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RivExample'),
      ),
      body: PageView.builder(itemBuilder: (BuildContext context, int index) {
        return Center(
          child: RiveAnimation.asset(lottiePath[index],
            fit: BoxFit.fill,
          ),
        );
      },
        itemCount: lottiePath.length,
        onPageChanged: (int page){
          setState(() {
            _currentPage = page;
          });
        },
      ),
    );
  }
}
