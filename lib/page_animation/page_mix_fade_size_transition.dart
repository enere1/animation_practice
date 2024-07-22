import 'package:flutter/material.dart';

class PageMixFadeSizeTransition extends PageRouteBuilder {
  final dynamic page;

  PageMixFadeSizeTransition(this.page)
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
          sizeFactor: animation,
          child: FadeTransition(
            opacity: animation,
            child: child,
          ),
        ),
      );
    },
  );
}
