import 'package:cv_send/_childrens/home/page.dart' as page;
import 'package:cv_send/_childrens/home/_childrens/detail_project/page.dart'
    as detail_project;
import 'package:cv_send/_childrens/home/_childrens/info/page.dart' as info;

import 'package:cv_send/utils/http/http_client.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomeModule extends Module {
  @override
  void binds(Injector i) {}

  @override
  void routes(RouteManager r) {
    r.child(
      Modular.initialRoute,

      child: (context) => const page.Page(),
      transition: TransitionType.fadeIn,
    );
    r.child(
      '/info',
      child: (context) =>
          info.Page(pass: (r.args.data ?? {})['pass_number'] ?? 0),
      transition: TransitionType.fadeIn,
    );
    r.child(
      '/project',
      child: (context) =>
          detail_project.Page(itemProject: (r.args.data ?? {})['project'] ?? 0),
      transition: TransitionType.fadeIn,
    );
  }
}
