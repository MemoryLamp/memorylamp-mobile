import 'package:flutter/material.dart';
import 'package:memory_lamp/models/icon_label_pair.dart';
import 'package:memory_lamp/widgets/ml_text.dart';

class MLDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<IconLabelPair> _drawerItems = [
      IconLabelPair(icon: Icons.home, name: "Home"),
      IconLabelPair(icon: Icons.person, name: "Profile"),
      IconLabelPair(icon: Icons.book_sharp, name: "Browse Books"),
      IconLabelPair(icon: Icons.notifications, name: "Notification"),
      IconLabelPair(icon: Icons.settings, name: "Settings"),
      IconLabelPair(icon: Icons.logout, name: "Logout"),
    ];

    return Drawer(
      child: ListView(
        children: List.generate(
          _drawerItems.length,
          (index) => ListTile(
            leading: Icon(_drawerItems[index].icon),
            title: MLText(_drawerItems[index].name),
          ),
        ),
      ),
    );
  }
}
