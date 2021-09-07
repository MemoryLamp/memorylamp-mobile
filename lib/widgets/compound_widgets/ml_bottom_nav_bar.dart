import 'package:flutter/material.dart';
import 'package:memory_lamp/models/enums/views.dart';
import 'package:memory_lamp/models/nav_item.dart';
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
        return _bottomNavBar(viewProvider);
      },
    );
  }

  BottomNavigationBar _bottomNavBar(ViewProvider viewProvider) {
    List<NavItem> _navItems = [
      NavItem(icon: Icons.home, name: "Home", view: Views.home),
      NavItem(icon: Icons.emoji_emotions, name: "Emotions", view: Views.home),
      NavItem(icon: Icons.bookmark_added, name: "Bookmarks", view: Views.home),
      NavItem(icon: Icons.query_stats, name: "Streaks", view: Views.streaks),
    ];

    return BottomNavigationBar(
      selectedItemColor: Colors.white,
      unselectedItemColor: MLColors.bgLight,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      backgroundColor: MLColors.primary,
      type: BottomNavigationBarType.fixed,
      currentIndex: _currentIndex,
      items: List.generate(
        _navItems.length,
        (index) => BottomNavigationBarItem(
          label: _navItems[index].name,
          icon: Icon(_navItems[index].icon),
        ),
      ),
      onTap: (int index) {
        viewProvider.changeView(_navItems[index].view);
        setState(() => _currentIndex = index);
      },
    );
  }
}
