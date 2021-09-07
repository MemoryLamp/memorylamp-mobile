import 'package:flutter/cupertino.dart';
import 'package:memory_lamp/helpers/asset_paths.dart';
import 'package:memory_lamp/theming/ml_font.dart';
import 'package:memory_lamp/views/bookmarks.dart';
import 'package:memory_lamp/views/books.dart';
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
}

extension ViewsExt on Views {
  Widget get view {
    switch (this) {
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
      case Views.logout:
        return LogoutView();

      case Views.streaks:
        return StreaksView();
      case Views.bookmarks:
        return BookmarksView();

      default:
        return Center(child: MLText("View not found"));
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

      default:
        return Image.asset(AssetPaths.logo("Header.png"));
    }
  }
}
