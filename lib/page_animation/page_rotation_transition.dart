import 'package:flutter/material.dart';

class PageRotationTransition extends PageRouteBuilder {
  final dynamic page;

  PageRotationTransition(this.page)
      : super(
          pageBuilder: (BuildContext context, Animation<double> animation,
                  Animation<double> secondaryAnimation) =>
              page,
          transitionsBuilder: (BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
              Widget child) {
            var curvedAnimation =
                CurvedAnimation(parent: animation, curve: Curves.bounceInOut);
            return RotationTransition(
              turns: Tween<double>(begin: 0, end: 1.5).animate(curvedAnimation),
              child: child,
            );
          },
        );
}
