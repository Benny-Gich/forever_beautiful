import 'package:flutter/material.dart';

class SkinLog extends StatelessWidget {
  const SkinLog({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(
          'Skin Log Page',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ),
    );
  }
}
