import 'package:flutter/material.dart';
import 'package:flutter_test_project/screens/main_page.dart';

/// The main application widget.
class TestApp extends StatelessWidget {
  /// Constructs a [TestApp] widget.
  const TestApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Test App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MainPage(),
    );
  }
}
