import 'package:flutter/material.dart';

/// A class that provides an animated color for the AppBar.
class AppBarColorAnimation {
  /// Creates an instance of [AppBarColorAnimation].
  final TickerProvider vsync;

  /// The animation controller for the color animation.
  late final AnimationController controller;
  late final Animation<Color?> colorAnimation;

  /// Getter for the AppBar color animation.
  Animation<Color?> get animation => colorAnimation;

  /// Constructs an [AppBarColorAnimation] with a given [vsync].
  AppBarColorAnimation({required this.vsync}) {
    controller = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: vsync,
    )..repeat(reverse: true);

    colorAnimation = ColorTween(
      begin: Colors.blue,
      end: Colors.deepPurple,
    ).animate(controller);
  }

  /// Disposes the animation controller.
  void dispose() {
    controller.dispose();
  }
}
