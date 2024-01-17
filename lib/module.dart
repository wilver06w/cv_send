import 'package:cv_send/_childrens/home/_childrens/info/bloc/bloc.dart';
import 'package:cv_send/_childrens/home/_childrens/repository.dart';
import 'package:flutter/material.dart';
import 'package:cv_send/config/module.dart';
import 'package:cv_send/utils/http/http_client.dart';
import 'package:cv_send/utils/preferences.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds {
    return [
      Bind((i) => Preferences()),
      Bind<XigoHttpClient>(
        (i) => XigoHttpClient().getInstance(),
      ),
      Bind.lazySingleton(
        (i) => BlocInfo(
          repository: Repository(),
        ),
      ),
      Bind((i) => GlobalKey<NavigatorState>()),
    ];
  }

  @override
  List<ModularRoute> get routes {
    return [
      ModuleRoute('/', module: GlobalModule()),
    ];
  }
}
