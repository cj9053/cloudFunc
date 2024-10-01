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
      _randNum = prefs.getInt('ff_randNum') ?? _randNum;
    });
    _safeInit(() {
      _squareNum = prefs.getInt('ff_squareNum') ?? _squareNum;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  int _randNum = 0;
  int get randNum => _randNum;
  set randNum(int value) {
    _randNum = value;
    prefs.setInt('ff_randNum', value);
  }

  int _squareNum = 0;
  int get squareNum => _squareNum;
  set squareNum(int value) {
    _squareNum = value;
    prefs.setInt('ff_squareNum', value);
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
