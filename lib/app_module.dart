import 'package:apredendo_modular_valuenotfier/infra/repositories/contact_repository.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'domain/controllers/controller.dart';
import 'external/data_sources/contact_data_source.dart';
import 'modules/home/home_module.dart';
import 'screens/register_contact_page.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [
    Bind.lazySingleton((i) => Controller(repository: ContactRepository(dataSource: ContactDataSource())))
  ];

  @override
  List<ModularRoute> get routes => [
    ModuleRoute('/home', module: HomeModule()),
    ChildRoute('/RegisterContactPage', child: (context, args) =>  RegisterContactPage(controller: Modular.get<Controller>(),)),
  ];
  
}