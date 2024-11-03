import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _isListener = prefs.getBool('ff_isListener') ?? _isListener;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  bool _isListener = false;
  bool get isListener => _isListener;
  set isListener(bool value) {
    _isListener = value;
    prefs.setBool('ff_isListener', value);
  }

  String _notificationEmail = '';
  String get notificationEmail => _notificationEmail;
  set notificationEmail(String value) {
    _notificationEmail = value;
  }

  String _notificationName = '';
  String get notificationName => _notificationName;
  set notificationName(String value) {
    _notificationName = value;
  }

  String _notificationPhoneNumber = '';
  String get notificationPhoneNumber => _notificationPhoneNumber;
  set notificationPhoneNumber(String value) {
    _notificationPhoneNumber = value;
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
