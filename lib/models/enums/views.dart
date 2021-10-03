import 'package:flutter/cupertino.dart';
import 'package:memory_lamp/helpers/asset_paths.dart';
import 'package:memory_lamp/theming/ml_font.dart';
import 'package:memory_lamp/views/bookmarks.dart';
import 'package:memory_lamp/views/books.dart';
import 'package:memory_lamp/views/emotions.dart';
import 'package:memory_lamp/views/home.dart';
import 'package:memory_lamp/views/logout.dart';
import 'package:memory_lamp/views/notification.dart';
import 'package:memory_lamp/views/profile.dart';
import 'package:memory_lamp/views/settings.dart';
import 'package:memory_lamp/views/streaks.dart';
import 'package:memory_lamp/widgets/ml_text.dart';

enum Views {
  home,
  profile,
  books,
  notification,
  settings,
  logout,
  streaks,
  bookmarks,
  emotions,
}

extension ViewsExt on Views {
  Widget get view {
    switch (this) {
      case Views.home:
        return const HomeView();
      case Views.profile:
        return const ProfileView();
      case Views.books:
        return const BooksView();
      case Views.notification:
        return const NotificationView();
      case Views.settings:
        return const SettingsView();
      case Views.logout:
        return const LogoutView();

      case Views.streaks:
        return const StreaksView();
      case Views.bookmarks:
        return const BookmarksView();
      case Views.emotions:
        return const EmotionsView();

      default:
        return const Center(child: MLText("View not found"));
    }
  }

  Widget get title {
    MLText _headerText(String text) {
      return MLText(text, fontSize: MLFont.mediumLarge);
    }

    switch (this) {
      case Views.profile:
        return _headerText("Profile");
      case Views.books:
        return _headerText("Browse Books");
      case Views.notification:
        return _headerText("Notifications");
      case Views.settings:
        return _headerText("Settings");
      case Views.logout:
        return _headerText("Logout");

      case Views.streaks:
        return _headerText("Streaks");
      case Views.bookmarks:
        return _headerText("Bookmarks");
      case Views.emotions:
        return _headerText("Emotions");

      default:
        return Image.asset(AssetPaths.logo("Header.png"));
    }
  }
}
