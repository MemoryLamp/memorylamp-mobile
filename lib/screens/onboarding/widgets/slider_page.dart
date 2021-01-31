import 'package:flutter/material.dart';
import 'package:memory_lamp/package/constants.dart';
import 'package:memory_lamp/package/size.dart';
import 'package:memory_lamp/package/texts.dart';

class SliderPage extends StatelessWidget {
  final String title;
  final String message;
  const SliderPage({this.title, this.message});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Container(
          //   height: SizeMQ.screenHeight * 0.6,
          //   color: Colors.grey,
          //   child: Center(
          //     child: NormalText('replace with image when available'),
          //   ),
          // ),
          // on second thought, I'll just hardcode something here  temporarily
          Image.asset('assets/code.png'),
          SizedBox(height: SizeMQ.screenHeight * 0.03),
          MediumText(
            title,
            color: PrimaryColor,
          ),
          NormalText(message),
        ],
      ),
    );
  }
}
