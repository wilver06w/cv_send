import 'package:cv_send/_childrens/home/_childrens/info/bloc/bloc.dart';
import 'package:cv_send/_childrens/home/_childrens/repository.dart';
import 'package:flutter/material.dart';
import 'package:cv_send/config/module.dart';
import 'package:cv_send/config/app.dart';
import 'package:cv_send/utils/http/http_client.dart';

class AppModule extends Module {
  @override
  void binds(Injector i) {
    i.addSingleton<XigoHttpClient>(() {
      return XigoHttpClient().getInstance();
    });
    i.addLazySingleton((i) => BlocInfo(repository: Repository()));
    i.addSingleton<GlobalKey<NavigatorState>>(() => App.instance.navigatorKey);
  }

  @override
  void routes(RouteManager r) {
    r.module('/', module: GlobalModule());
  }
}
