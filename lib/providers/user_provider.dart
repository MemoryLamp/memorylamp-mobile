import 'package:flutter/foundation.dart';
import 'package:memory_lamp/models/user.dart';

class UserProvider extends ChangeNotifier {
  final User _user = User(name: "Hannah", streak: 1, week: 0);

  void updateUserData({String? name, int? streak, int? week}) {
    if (name != null) _user.name = name;
    if (streak != null) _user.streak = streak;
    if (week != null) _user.week = week;

    notifyListeners();
  }

  User get data => _user;
}
