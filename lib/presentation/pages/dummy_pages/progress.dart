import 'package:flutter/material.dart';

class Progress extends StatelessWidget {
  const Progress({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(
          'Progress Page',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ),
    );
  }
}
