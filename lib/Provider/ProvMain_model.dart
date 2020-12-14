import 'package:flutter/material.dart';

class ProvModel extends ChangeNotifier {
  String provText = 'プロバイダーテスト';

  void changeprovText() {
    provText = 'てすとOK';
    notifyListeners();
  }
}
