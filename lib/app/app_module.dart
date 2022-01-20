import 'package:flutter_modular/flutter_modular.dart';
import 'package:saborosa_app/app/modules/details/details_module.dart';
import 'package:saborosa_app/app/modules/details/pages/details/details_store.dart';
import 'package:saborosa_app/app/modules/home/pages/home/home_store.dart';

import 'modules/home/home_module.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => HomeStore()),
    Bind.lazySingleton((i) => DetailsStore())
  ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(Modular.initialRoute, module: HomeModule()),
    ModuleRoute("/details", module: DetailsModule())
  ];

}