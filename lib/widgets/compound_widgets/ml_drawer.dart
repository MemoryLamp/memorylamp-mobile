import 'package:flutter/material.dart';
import 'package:memory_lamp/models/nav_item.dart';
import 'package:memory_lamp/screens/home.dart';
import 'package:memory_lamp/widgets/ml_text.dart';

class MLDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<NavItem> _drawerItems = [
      NavItem(icon: Icons.home, name: "Home", routeName: HomeScreen.routeName),
      NavItem(icon: Icons.person, name: "Profile", routeName: "profile"),
      NavItem(
        icon: Icons.book_sharp,
        name: "Browse Books",
        routeName: "profile",
      ),
      NavItem(
        icon: Icons.notifications,
        name: "Notification",
        routeName: "profile",
      ),
      NavItem(icon: Icons.settings, name: "Settings", routeName: "profile"),
      NavItem(icon: Icons.logout, name: "Logout", routeName: "profile"),
    ];

    return Drawer(
      child: ListView(
        children: List.generate(
          _drawerItems.length,
          (index) => ListTile(
            leading: Icon(_drawerItems[index].icon),
            title: MLText(_drawerItems[index].name),
            onTap: () => Navigator.pushReplacementNamed(
              context,
              _drawerItems[index].routeName,
            ),
          ),
        ),
      ),
    );
  }
}
