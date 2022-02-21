import 'package:flutter/material.dart';
import 'package:memory_lamp/theming/ml_defaults.dart';

class MemorizeScaffold extends StatelessWidget {
  static const String routeName = "/reciteThisVerse";

  final Widget body;

  const MemorizeScaffold({required this.body, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Memorize"), centerTitle: true),
      body: SafeArea(
        child: Padding(
          padding: MLDefaults.screenPadding,
          child: body,
        ),
      ),
    );
  }
}
