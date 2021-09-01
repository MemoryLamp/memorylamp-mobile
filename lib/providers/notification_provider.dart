import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:memory_lamp/helpers/asset_manager.dart';
import 'package:memory_lamp/models/notification_card.dart';

enum NotifAction { increment, decrement }

class NotificationProvider extends ChangeNotifier {
  List<NotificationCard> _cards = [
    NotificationCard(
      count: 5,
      name: "Pending Verses",
      image: Image.asset(AssetManager.icon("book.png")),
    ),
    NotificationCard(
      count: 2,
      name: "Weekly Streak",
      image: Image.asset(AssetManager.icon("streak.png")),
    ),
    NotificationCard(
      count: 2,
      name: "Badges",
      image: Image.asset(AssetManager.icon("badges.png")),
    ),
  ];

  void updateNotification({
    required String name,
    int? count,
    NotifAction? action,
  }) {
    assert(
      count == null || action == null,
      "Please provide only either a count or an action to increment or decrement",
    );

    if (count != null) {
      _cards[_indexOf(name)].count = count;
    } else {
      switch (action) {
        case NotifAction.increment:
          _cards[_indexOf(name)].count += 1;
          break;
        case NotifAction.decrement:
          if (_cards[_indexOf(name)].count > 0)
            _cards[_indexOf(name)].count -= 1;
          break;
        default:
      }
    }

    notifyListeners();
  }

  int _indexOf(String name) =>
      _cards.indexWhere((element) => element.name == name);

  bool get noNotifications =>
      _cards.indexWhere((element) => element.count > 0) == -1;

  NotificationCard getNotif(String name) => _cards[_indexOf(name)];

  List<NotificationCard> get cards => _cards;
}
