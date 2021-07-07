import 'package:covid_flutter_app/app/modules/start/start_module.dart';

import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  @override
  List<Bind<Object>> get binds => [];

  @override
  List<ModularRoute> get routes => [ModuleRoute('/', module: StartModule())];
}
