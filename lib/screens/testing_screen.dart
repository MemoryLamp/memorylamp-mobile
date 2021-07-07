import 'package:flutter/material.dart';
import 'package:memory_lamp/defaults/buttons/ml_outlined_button.dart';
import 'package:memory_lamp/defaults/ml_text.dart';

class TestingScreen extends StatelessWidget {
  static String routeName = '/testing';
  const TestingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: MLText("hello world")),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              MLText("MLText"),
              MLOutlinedButton(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.check_circle_outline_outlined,
                      color: Colors.white,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: "some label",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: "some label",
          ),
        ],
      ),
    );
  }
}
