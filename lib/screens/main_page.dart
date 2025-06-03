import 'package:flutter/material.dart';
import 'package:flutter_test_project/animations/app_bar_color_animation.dart';
import 'package:flutter_test_project/widgets/random_color_box.dart';

/// The main page of the application.
class MainPage extends StatefulWidget {
  /// Constructs a [MainPage] widget.
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with TickerProviderStateMixin {
  // ignore: avoid_late_keyword
  late AppBarColorAnimation _appBarAnimation;

  @override
  void initState() {
    super.initState();
    _appBarAnimation = AppBarColorAnimation(vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _appBarAnimation.animation,
      builder: (context, _) => Scaffold(
        appBar: AppBar(
          title: const Text('Test App', style: TextStyle(color: Colors.white)),
          backgroundColor: _appBarAnimation.animation.value,
        ),
        body: const RandomColorBox(text: 'Hello there'),
      ),
    );
  }

  @override
  void dispose() {
    _appBarAnimation.dispose();
    super.dispose();
  }
}
