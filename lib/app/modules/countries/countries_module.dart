import 'package:covid_flutter_app/app/modules/countries/countries_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'country_details_page.dart';

class CountriesModule extends Module {
  @override
  // TODO: implement binds
  List<Bind<Object>> get binds => [];

  @override
  // TODO: implement routes
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (_, args) => CountriesPage()),
        ChildRoute('/details', child: (_, args) => CountryDetailsPage())
      ];
}
