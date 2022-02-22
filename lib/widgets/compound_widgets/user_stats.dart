import 'package:flutter/material.dart';
import 'package:memory_lamp/helpers/asset_paths.dart';
import 'package:memory_lamp/helpers/size_mq.dart';
import 'package:memory_lamp/models/user.dart';
import 'package:memory_lamp/providers/user_provider.dart';
import 'package:memory_lamp/theming/ml_colors.dart';
import 'package:memory_lamp/theming/ml_font.dart';
import 'package:memory_lamp/widgets/compound_widgets/labeled_icon.dart';
import 'package:provider/provider.dart';

class UserStats extends StatelessWidget {
  final bool inDrawer;

  const UserStats({this.inDrawer = false, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (inDrawer) {
      return const _InDrawer();
    }
    return const _AsHeader();
  }
}

class _InDrawer extends StatelessWidget {
  const _InDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: MLColors.primaryLight,
      padding: const EdgeInsets.all(8),
      child: LabeledIcon(
        icon: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Image.asset(AssetPaths.icon("pfp.png")),
        ),
        label: Consumer<UserProvider>(
          builder: (context, UserProvider userProvider, child) {
            User user = userProvider.data;
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(user.name, style: MLFont.extraLargeBold),
                Text("Streak : ${user.streak}"),
                Text("Week: ${user.week}"),
              ],
            );
          },
        ),
      ),
    );
  }
}

class _AsHeader extends StatelessWidget {
  const _AsHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(28),
          bottomRight: Radius.circular(28),
        ),
        color: MLColors.primary,
      ),
      child: LabeledIcon(
        spaceBetween: 24,
        icon: Image.asset(AssetPaths.icon("pfp.png")),
        label: SizedBox(
          width: SizeMQ.width! * .4,
          child: Consumer<UserProvider>(
              builder: (context, UserProvider userProvider, child) {
            User user = userProvider.data;
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(user.name, style: MLFont.extraLargeWhiteBold),
                Row(
                  children: [
                    Text(
                      "Streak : ${user.streak}",
                      style: MLFont.whiteSemiBold,
                    ),
                    const Spacer(),
                    Text(
                      "Week: ${user.week}",
                      style: MLFont.whiteSemiBold,
                    ),
                  ],
                ),
              ],
            );
          }),
        ),
      ),
    );
  }
}
