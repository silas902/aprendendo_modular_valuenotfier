import 'package:flutter_modular/flutter_modular.dart';

import 'package:apredendo_modular_valuenotfier/modules/home/home_page.dart';

import '../../domain/controllers/controller.dart';

class HomeModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
         ChildRoute('/', child: (context, args) =>  HomePage( controller: Modular.get<Controller>(),)),
         
         //ModuleRoute("/home", module: HomeModule())
      ];
}
