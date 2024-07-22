import 'package:flutter/material.dart';

class PageSizeTransition extends PageRouteBuilder {
  final dynamic page;

  PageSizeTransition(this.page)
      : super(
          pageBuilder: (BuildContext context, Animation<double> animation,
                  Animation<double> secondaryAnimation) =>
              page,
          transitionsBuilder: (BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
              Widget child) {
            return Align(
              alignment: Alignment.center,
              child: SizeTransition(
                child: child,
                sizeFactor: animation,
              ),
            );
          },
        );
}
