import 'package:flutter_modular/flutter_modular.dart';
import 'package:saborosa_app/app/modules/details/pages/details/details_page.dart';
import 'package:saborosa_app/app/modules/details/pages/details/details_store.dart';

class DetailsModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => DetailsStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) =>  DetailsPage(cake: args.data['cake'],)),
  ];
}
