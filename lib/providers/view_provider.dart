import 'package:flutter/foundation.dart';
import 'package:memory_lamp/models/enums/views.dart';

class ViewProvider extends ChangeNotifier {
  Views _selectedView = Views.home;

  void changeView(Views view) {
    _selectedView = view;

    notifyListeners();
  }

  Views get selectedView => _selectedView;
}
