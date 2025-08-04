import 'package:cv_send/_childrens/home/module.dart';
import 'package:cv_send/_childrens/info/page.dart' as info;
import 'package:flutter_modular/flutter_modular.dart';

class GlobalModule extends Module {
  @override
  void binds(Injector i) {}

  @override
  void routes(RouteManager r) {
    r.child(
      Modular.initialRoute,
      child: (context) => const info.Page(),
      transition: TransitionType.fadeIn,
    );

    r.module('/home', module: HomeModule());
  }
}
