import 'package:flutter/foundation.dart';

enum UserStatus { Uninitialized, Authenticated, UnAuthenticated }

class UserState with ChangeNotifier {
  UserStatus _status = UserStatus.UnAuthenticated;

  UserStatus get status => _status;

  set setStatus(UserStatus s) {
    _status = s;
    notifyListeners();
  }
}