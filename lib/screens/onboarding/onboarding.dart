import 'package:flutter/material.dart';
import 'package:memory_lamp/package/constants.dart';
import 'package:memory_lamp/package/size.dart';
import 'package:memory_lamp/package/texts.dart';
import 'package:memory_lamp/screens/login/login.dart';
import 'package:memory_lamp/screens/onboarding/widgets/slider_model.dart';
import 'package:memory_lamp/screens/onboarding/widgets/slider_page.dart';

class Onboarding extends StatefulWidget {
  static String routeName = '/onboarding';
  @override
  OnboardingState createState() => OnboardingState();
}

class OnboardingState extends State<Onboarding> {
  PageController _pageController = PageController();
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView.builder(
          controller: _pageController,
          onPageChanged: (val) => setState(() => _currentIndex = val),
          itemCount: _sliderItems.length,
          itemBuilder: (context, index) {
            return SliderPage(
              title: _sliderItems[index].title,
              message: _sliderItems[index].message,
            );
          },
        ),
      ),
      bottomSheet: _currentIndex != _sliderItems.length - 1
          ? _bottomSheetButtons()
          : _getStartedButton(),
    );
  }

  // ====== COMPONENTS

  // ------ indexIndicator
  Widget _indexIndicator(bool isCurrentPage) {
    return Container(
      height: isCurrentPage ? 10 : 7,
      width: isCurrentPage ? 10 : 7,
      margin: EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        color: isCurrentPage ? PrimaryColor : Colors.grey[300],
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }

  // ------ sliderItems
  final List<SliderItem> _sliderItems = [
    SliderItem(
        title: 'First Page',
        message: 'Eiusmod ut nulla esse elit pariatur occaecat sunt nostrud.'),
    SliderItem(
        title: 'Second Page',
        message: 'Voluptate amet irure non aliqua minim ut anim nisi tempor.'),
    SliderItem(
        title: 'Third Page', message: 'Sunt labore mollit cupidatat quis.')
  ];

  // ------ bottomSheetButtons
  Padding _bottomSheetButtons() => Padding(
        padding: EdgeInsets.all(5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
              onPressed: () => _pageController.animateToPage(
                _sliderItems.length - 1,
                duration: defaultDuration,
                curve: Curves.linear,
              ),
              child: Text('SKIP'),
            ),
            Row(
              children: [
                for (int i = 0; i < _sliderItems.length; i++)
                  _indexIndicator(_currentIndex == i),
              ],
            ),
            TextButton(
              onPressed: () => _pageController.animateToPage(
                _currentIndex + 1,
                duration: defaultDuration,
                curve: Curves.linear,
              ),
              child: Text('NEXT'),
            ),
          ],
        ),
      );

  // ------ getStartedButtons
  InkWell _getStartedButton() => InkWell(
        onTap: () => Navigator.popAndPushNamed(context, LoginScreen.routeName),
        child: Container(
          color: PrimaryColor,
          alignment: Alignment.center,
          height: SizeMQ.screenHeight * .07,
          width: SizeMQ.screenWidth,
          child: MediumText(
            'Get Started',
            color: Colors.white,
            weight: FontWeight.bold,
          ),
        ),
      );
}
