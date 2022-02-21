import 'package:flutter/material.dart';
import 'package:memory_lamp/helpers/asset_paths.dart';
import 'package:memory_lamp/helpers/size_mq.dart';
import 'package:memory_lamp/models/user.dart';
import 'package:memory_lamp/providers/user_provider.dart';
import 'package:memory_lamp/theming/ml_colors.dart';
import 'package:memory_lamp/theming/ml_font.dart';
import 'package:memory_lamp/widgets/compound_widgets/labeled_icon.dart';
import 'package:memory_lamp/widgets/ml_container.dart';
import 'package:provider/provider.dart';

class UserStats extends StatelessWidget {
  final bool inDrawer;

  const UserStats({this.inDrawer = false, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<UserProvider>(
      builder: (BuildContext context, userProvider, Widget? child) {
        if (inDrawer) {
          return _inDrawer(userProvider.data);
        }
        return _asHeader(userProvider.data);
      },
    );
  }

  MLContainer _inDrawer(User _user) {
    return MLContainer(
      backgroundColor: MLColors.primaryLight,
      padding: const EdgeInsets.all(8),
      child: LabeledIcon(
        icon: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Image.asset(AssetPaths.icon("pfp.png")),
        ),
        label: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(_user.name, style: MLFont.extraLargeBold),
            Text("Streak : ${_user.streak}"),
            Text("Week: ${_user.week}"),
          ],
        ),
      ),
    );
  }

  MLContainer _asHeader(User _user) {
    return MLContainer(
      padding: const EdgeInsets.all(20.0),
      borderRadius: const BorderRadius.only(
        bottomLeft: Radius.circular(28),
        bottomRight: Radius.circular(28),
      ),
      backgroundColor: MLColors.primary,
      child: LabeledIcon(
        spaceBetween: 24,
        icon: Image.asset(AssetPaths.icon("pfp.png")),
        label: SizedBox(
          width: SizeMQ.width! * .4,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(_user.name, style: MLFont.extraLargeWhiteBold),
              Row(
                children: [
                  Text(
                    "Streak : ${_user.streak}",
                    style: MLFont.whiteSemiBold,
                  ),
                  const Spacer(),
                  Text(
                    "Week: ${_user.week}",
                    style: MLFont.whiteSemiBold,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
