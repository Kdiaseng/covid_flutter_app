
import 'package:flutter_modular/flutter_modular.dart';

import 'modules/start/pagess/start_page.dart';
import 'modules/start/submodules/countries/countries_module.dart';
import 'modules/start/submodules/home/home_module.dart';

class AppModule extends Module {
  @override
  List<Bind<Object>> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (_, __) => StartPage(), children: [
          ModuleRoute('/home', module: HomeModule()),
          ModuleRoute('/countries', module: CountriesModule()),
        ])
      ];
}
