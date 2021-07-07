import 'package:covid_flutter_app/app/repository/worldometer_repository.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'countries_page.dart';
import 'country_controller.dart';
import 'country_details_page.dart';

class CountriesModule extends Module {
  @override
  List<Bind<Object>> get binds => [
        Bind((i) => CountryController()),
        Bind.singleton((i) => WorldometerRepository())
      ];

  @override
  // TODO: implement routes
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (_, args) => CountriesPage()),
        ChildRoute('/details/:countryName',
            child: (_, args) => CountryDetailsPage(
                  countryName: args.params['countryName'],
                ))
      ];
}
