import 'package:flutter/material.dart';

class Scanner extends StatelessWidget {
  const Scanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text('Scanner Page', style: Theme.of(context).textTheme.bodyLarge),
      ),
    );
  }
}
