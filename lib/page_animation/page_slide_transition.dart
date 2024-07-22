import 'package:flutter/material.dart';

class PageSlideTransition extends PageRouteBuilder {
  final dynamic page;

  PageSlideTransition(this.page)
      : super(
          pageBuilder: (BuildContext context, Animation<double> animation,
                  Animation<double> secondaryAnimation) =>
              page,
          transitionsBuilder: (BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
              Widget child) {

            var tween = Tween<Offset>(begin: Offset(-1,-1), end: Offset.zero);
            return SlideTransition(
                position: tween.animate(animation),
                //animation.drive(tween),
                child: child,);
          },
        );
}
