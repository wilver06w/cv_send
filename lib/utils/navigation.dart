import 'package:flutter_modular/flutter_modular.dart';

class XigoRoute {
  static navHomeReplaceName() async {
    Modular.to.pushReplacementNamed('/home/');
  }

  static navInfoReplaceName() async {
    Modular.to.pushReplacementNamed('/home/info');
  }
}
