import 'package:flutter/material.dart';

class ModalPage extends PageRoute {
  final bool fullScreenDialog;
  late final WidgetBuilder _builder;

  ModalPage({
    required WidgetBuilder builder,
    RouteSettings? settings,
    this.fullScreenDialog = true,
  }) : _builder = builder, super(settings: settings);

  @override
  bool get opaque => false;

  @override
  bool get barrierDismissible => true;

  @override
  Color? get barrierColor => Colors.black.withOpacity(0.5);

  @override
  String? get barrierLabel => 'ModalPage';

  @override
  bool get maintainState => true;

  @override
  Duration get transitionDuration => const Duration(milliseconds: 500);

  @override
  Widget buildPage(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation) {
    return Stack(
      children: [
        _builder(context),
      ],
    );
  }

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation, Widget child) {
    return FadeTransition(
      opacity: animation,
      child: child,
    );
  }
}
