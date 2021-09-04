import 'package:flutter/material.dart';
import 'package:memory_lamp/providers/view_provider.dart';
import 'package:memory_lamp/theming/ml_colors.dart';
import 'package:provider/provider.dart';

class MLBottomNavBar extends StatefulWidget {
  const MLBottomNavBar({Key? key}) : super(key: key);

  @override
  _MLBottomNavBarState createState() => _MLBottomNavBarState();
}

class _MLBottomNavBarState extends State<MLBottomNavBar> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Consumer<ViewProvider>(
      builder: (BuildContext context, viewProvider, Widget? child) {
        return _bottomNavBar();
      },
    );
  }

  BottomNavigationBar _bottomNavBar() {
    return BottomNavigationBar(
      selectedItemColor: Colors.white,
      unselectedItemColor: MLColors.bgLight,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      backgroundColor: MLColors.primary,
      type: BottomNavigationBarType.fixed,
      currentIndex: _currentIndex,
      items: [
        BottomNavigationBarItem(
          label: 'Home',
          icon: Icon(Icons.home),
        ),
        BottomNavigationBarItem(
          label: 'Emotions',
          icon: Icon(Icons.emoji_emotions),
        ),
        BottomNavigationBarItem(
          label: 'Bookmarks',
          icon: Icon(Icons.bookmark_added),
        ),
        BottomNavigationBarItem(
          label: 'Stats',
          icon: Icon(Icons.query_stats),
        ),
      ],
      onTap: (index) {
        setState(() {
          _currentIndex = index;
        });
      },
    );
  }
}
