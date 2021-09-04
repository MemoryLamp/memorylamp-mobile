import 'package:flutter/foundation.dart';
import 'package:memory_lamp/models/enums/views.dart';

class ViewProvider extends ChangeNotifier {
  Views _selectedView = Views.home;
  dynamic _arg;

  void changeView(Views view, {arg}) {
    _selectedView = view;
    _arg = arg;

    notifyListeners();
  }

  Views get selectedView => _selectedView;
  dynamic get arg => _arg;
}
