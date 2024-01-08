import 'package:flutter_modular/flutter_modular.dart';
import 'package:cv_send/_childrens/home/module.dart';
import 'package:cv_send/_childrens/init/page.dart' as splash;
import 'package:cv_send/_childrens/info/page.dart' as info;

class GlobalModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  List<ModularRoute> get routes {
    return [
      ChildRoute(
        Modular.initialRoute,
        child: (_, args) => const info.Page(),
        // child: (_, args) => const splash.Page(),
        transition: TransitionType.fadeIn,
      ),
      ModuleRoute('/home', module: HomeModule()),
    ];
  }
}
