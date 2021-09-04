import 'package:flutter/material.dart';
import 'package:memory_lamp/widgets/ml_text.dart';

class BooksView extends StatelessWidget {
  const BooksView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [MLText("Books")],
          ),
        ),
      ),
    );
  }
}
