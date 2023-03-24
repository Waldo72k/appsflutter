import 'package:flutter/material.dart';

class CustomAnimation extends PageRouteBuilder {
  final Widget page;
  final RouteSettings settings;
  final Curve curve;
  final Duration duration;

  CustomAnimation({
    required this.page,
    this.settings = const RouteSettings(),
    this.curve = Curves.easeOutBack,
    this.duration = const Duration(milliseconds: 720),
  }) : super(
            pageBuilder: (_, __, ____) => page,
            settings: settings,
            transitionDuration: duration,
            transitionsBuilder: (_, animation, __, child) {
              FadeTransition(opacity: animation, child: child);
              animation =
                  CurvedAnimation(parent: animation, curve: Curves.easeOutBack);
              return ScaleTransition(
                scale: animation,
                alignment: const Alignment(0.72, 1),
                child: child,
              );
            });
}
