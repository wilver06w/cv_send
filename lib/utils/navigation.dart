import 'package:cv_send/_childrens/home/_childrens/info/models/item_project.dart';
import 'package:flutter_modular/flutter_modular.dart';

class XigoRoute {
  static navHomeReplaceName() async {
    Modular.to.pushReplacementNamed('/home/');
  }

  static navInfoReplaceName({int passNumber = 0}) async {
    Modular.to.pushReplacementNamed(
      '/home/info',
      arguments: {
        'pass_number': passNumber,
      },
    );
  }

  static navProject({required ItemProject itemProject}) async {
    Modular.to.pushNamed(
      '/home/project',
      arguments: {
        'project': itemProject,
      },
    );
  }
}
