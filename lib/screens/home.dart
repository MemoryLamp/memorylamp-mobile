import 'package:flutter/material.dart';
import 'package:memory_lamp/providers/view_provider.dart';
import 'package:memory_lamp/views/books.dart';
import 'package:memory_lamp/views/home.dart';
import 'package:memory_lamp/views/notification.dart';
import 'package:memory_lamp/views/profile.dart';
import 'package:memory_lamp/views/settings.dart';
import 'package:memory_lamp/widgets/compound_widgets/ml_appbar.dart';
import 'package:memory_lamp/widgets/compound_widgets/ml_drawer.dart';
import 'package:memory_lamp/widgets/ml_text.dart';
import 'package:provider/provider.dart';

enum Views { home, profile, books, notification, settings }

class HomeScreen extends StatelessWidget {
  static String routeName = "home";

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ViewProvider(),
      child: Scaffold(
        appBar: MLAppbar(),
        drawer: MLDrawer(),
        body: Consumer<ViewProvider>(
          builder: (BuildContext context, viewProvider, Widget? child) {
            return _viewSwitch(viewProvider.selectedView);
          },
        ),
      ),
    );
  }

  Widget _viewSwitch(Views view) {
    switch (view) {
      case Views.home:
        return HomeView();
      case Views.profile:
        return ProfileView();
      case Views.books:
        return BooksView();
      case Views.notification:
        return NotificationView();
      case Views.settings:
        return SettingsView();

      default:
        return Center(child: MLText("View not found"));
    }
  }
}
