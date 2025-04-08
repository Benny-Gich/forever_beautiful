import 'package:flutter/material.dart';
import 'package:forever_beautiful/presentation/pages/homepage.dart';
import 'package:forever_beautiful/presentation/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Forever Beautiful',
      theme: AppTheme().theme,
      darkTheme: DarkAppTheme().theme,
      home: Homepage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
