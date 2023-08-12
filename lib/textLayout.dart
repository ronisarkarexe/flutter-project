import 'package:flutter/material.dart';

class TextLayout extends StatelessWidget {
  const TextLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Some Text",style: Theme.of(context).textTheme.headlineLarge),
        Text("Hello World")
      ],
    );
  }
}