import 'package:flutter/material.dart';
import 'package:memory_lamp/models/enums/views.dart';
import 'package:memory_lamp/providers/view_provider.dart';
import 'package:memory_lamp/widgets/compound_widgets/ml_appbar.dart';
import 'package:memory_lamp/widgets/compound_widgets/ml_bottomNavBar.dart';
import 'package:memory_lamp/widgets/compound_widgets/ml_drawer.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "home";

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ViewProvider(),
      child: Scaffold(
        appBar: const MLAppbar(),
        drawer: const MLDrawer(),
        bottomNavigationBar: const MLBottomNavBar(),
        body: Consumer<ViewProvider>(
          builder: (BuildContext context, viewProvider, Widget? child) {
            return viewProvider.selectedView.view;
          },
        ),
      ),
    );
  }
}
