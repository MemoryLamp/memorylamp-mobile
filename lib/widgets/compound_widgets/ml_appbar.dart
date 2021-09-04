import 'package:flutter/material.dart';
import 'package:memory_lamp/helpers/asset_manager.dart';

class MLAppbar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return _appBar();
  }

  AppBar _appBar() {
    return AppBar(
      centerTitle: true,
      title: Image.asset(AssetManager.logo("Header.png")),
      actions: [
        IconButton(
          onPressed: () => print("Search"),
          icon: Icon(Icons.search),
        )
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(_appBar().preferredSize.height);
}
