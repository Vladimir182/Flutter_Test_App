import 'dart:math';

import 'package:flutter/material.dart';

const int _maxColorValue = 0xFFFFFF;

/// MainPage widget that serves as the main screen of the app
class RandomColorBox extends StatefulWidget {
  /// Constructs a [RandomColorBox] widget.
  const RandomColorBox({required this.text, super.key});

  /// The text to display in the box.
  final String text;

  @override
  State<RandomColorBox> createState() => _RandomColorBoxState();
}

class _RandomColorBoxState extends State<RandomColorBox> {
  Color _bgColor = Colors.white;
  Color _txtColor = Colors.black;

  void _changeBackgroundColor() {
    setState(() {
      _txtColor = Color(
        Random().nextInt(_maxColorValue + 1),
      ).withValues(alpha: 1.0);
      _bgColor = Color(
        Random().nextInt(_maxColorValue + 1),
      ).withValues(alpha: 1.0);
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _changeBackgroundColor,
      child: Container(
        color: _bgColor,
        width: double.infinity,
        height: double.infinity,
        alignment: Alignment.center,
        child: Text(
          widget.text,
          style: TextStyle(
            fontSize: 40,
            color: _txtColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
