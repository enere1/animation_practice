import 'package:flutter/material.dart';

class PageScaleTransition extends PageRouteBuilder {
  final dynamic page;

  PageScaleTransition(this.page)
      : super(
          pageBuilder: (BuildContext context, Animation<double> animation,
                  Animation<double> secondaryAnimation) =>
              page,
          transitionsBuilder: (BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
              Widget child) {
            var curvedAnimation =
                CurvedAnimation(parent: animation, curve: Curves.easeInOut);
            return ScaleTransition(
                child: child,
                scale:
                    Tween<double>(begin: 0, end: 0.8).animate(curvedAnimation));
          },
        );
}
