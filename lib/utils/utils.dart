import 'dart:math';

import 'package:shared_preferences/shared_preferences.dart';

String getRandomString(int length) {
  const _chars =
      'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
  Random _rnd = Random();
  return String.fromCharCodes(Iterable.generate(
      length, (_) => _chars.codeUnitAt(_rnd.nextInt(_chars.length))));
}

class DataCache {
  static SharedPreferences data;
  static String USER_ID = "USER_ID";
  static String CURRENT_LANGUAGE = "CURRENT_LANGUAGE";

  static init() async {
    data = await SharedPreferences.getInstance();
  }
}
