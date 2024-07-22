import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottieSliderExample extends StatefulWidget {
  const LottieSliderExample({Key? key}) : super(key: key);

  @override
  State<LottieSliderExample> createState() => _LottieSliderExampleState();
}

class _LottieSliderExampleState extends State<LottieSliderExample> {

  final List<String> lottiePath = [
    'assets/lottie/bird.json',
    'assets/lottie/car.json',
    'assets/lottie/tigger.json',
  ];
  final pageController = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('LottieSliderExample'),
        ),
        body: PageView.builder(itemBuilder: (BuildContext context, int index) {
          return Center(
            child: Lottie.asset(lottiePath[index],
              repeat: true,
              reverse: false,
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
