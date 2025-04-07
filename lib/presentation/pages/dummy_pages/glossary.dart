import 'package:flutter/material.dart';

class Glossary extends StatelessWidget {
  const Glossary({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(
          'Glossary Page',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ),
    );
  }
}
