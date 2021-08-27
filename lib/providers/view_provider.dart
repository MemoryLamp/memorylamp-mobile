import 'package:flutter/foundation.dart';
import 'package:memory_lamp/screens/home.dart';

class ViewProvider extends ChangeNotifier {
  Views _selectedView = Views.books;

  void changeView(Views view) {
    _selectedView = view;

    notifyListeners();
  }

  get selectedView => _selectedView;
}
