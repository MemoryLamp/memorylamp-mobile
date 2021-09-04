import 'package:flutter/material.dart';
import 'package:memory_lamp/models/enums/views.dart';
import 'package:memory_lamp/providers/view_provider.dart';
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
      elevation: 0,
      title: Consumer<ViewProvider>(
        builder: (BuildContext context, viewProvider, Widget? child) {
          return viewProvider.selectedView.title;
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

  @override
  Size get preferredSize => Size.fromHeight(_appBar().preferredSize.height);
}
