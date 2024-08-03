import 'package:flutter/material.dart';

class CustomRoute<T> extends MaterialPageRoute<T> {
  CustomRoute(  RouteSettings settings,{required WidgetBuilder builder,})
      : super(builder: builder, settings: settings);
  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    if (settings.name == "MainPage") {
      return child;
    }
    return FadeTransition(
      opacity: animation,
      child: child,
    );
  }
}
