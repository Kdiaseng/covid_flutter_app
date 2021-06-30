import 'package:covid_flutter_app/app/modules/countries/countries_module.dart';
import 'package:covid_flutter_app/app/modules/home/home_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  @override
  // TODO: implement binds
  List<Bind<Object>> get binds => [];

  @override
  // TODO: implement routes
  List<ModularRoute> get routes => [
        ModuleRoute('/', module: HomeModule()),
        ModuleRoute('/countries', module: CountriesModule())
      ];
}
