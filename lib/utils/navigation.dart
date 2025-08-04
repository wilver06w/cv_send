import 'package:cv_send/_childrens/home/_childrens/info/models/item_project.dart';
import 'package:flutter_modular/flutter_modular.dart';

class XigoRoute {
  static void navHomeReplaceName() async {
    Modular.to.pushReplacementNamed('/home/');
  }

  static void navInfo({int passNumber = 0}) async {
    Modular.to.pushNamed('/home/info', arguments: {'pass_number': passNumber});
  }

  static void navProject({required ItemProject itemProject}) async {
    // Usar pushNamed para mantener el estado de la página anterior
    await Modular.to.pushNamed(
      '/home/project',
      arguments: {'project': itemProject},
    );
  }
}
