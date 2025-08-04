import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

class App {
  static final instance = App._();

  final navigatorKey = GlobalKey<NavigatorState>();

  Map<String, dynamic> config = {};

  App._();

  Future<void> init() async {
    Intl.defaultLocale = 'es';

    await _setPreferredOrientations();
  }

  Future<void> _setPreferredOrientations() async {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }
}
