import 'package:flutter/material.dart';
import 'package:memory_lamp/helpers/asset_manager.dart';
import 'package:memory_lamp/models/enums/views.dart';
import 'package:memory_lamp/providers/view_provider.dart';
import 'package:memory_lamp/theming/ml_font.dart';
import 'package:memory_lamp/widgets/ml_text.dart';
import 'package:provider/provider.dart';

class MLAppbar extends StatelessWidget implements PreferredSizeWidget {
  const MLAppbar();

  @override
  Widget build(BuildContext context) {
    return _appBar();
  }

  AppBar _appBar() {
    return AppBar(
      centerTitle: true,
      title: Consumer<ViewProvider>(
        builder: (BuildContext context, viewProvider, Widget? child) {
          return _titleSwitch(viewProvider.selectedView);
        },
      ),
      actions: [
        IconButton(
          onPressed: () => print("Search"),
          icon: Icon(Icons.search),
        )
      ],
    );
  }

  Widget _titleSwitch(Views view) {
    MLText _headerText(String text) {
      return MLText(text, fontSize: MLFont.mediumLarge);
    }

    switch (view) {
      case Views.home:
        return Image.asset(AssetManager.logo("Header.png"));
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
      default:
        return Image.asset(AssetManager.logo("Header.png"));
    }
  }

  @override
  Size get preferredSize => Size.fromHeight(_appBar().preferredSize.height);
}
