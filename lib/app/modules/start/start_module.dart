import 'package:covid_flutter_app/app/modules/start/pagess/start_page.dart';
import 'package:covid_flutter_app/app/modules/start/submodules/countries/countries_module.dart';
import 'package:covid_flutter_app/app/modules/start/submodules/countries/pages/country_details_page.dart';
import 'package:covid_flutter_app/app/modules/start/submodules/home/home_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

class StartModule extends Module {
  @override
  // TODO: implement binds
  List<Bind<Object>> get binds => [];

  @override
  // TODO: implement routes
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (_, __) => StartPage(), children: [
          ModuleRoute('/countries', module: CountriesModule()),
          ModuleRoute('/home', module: HomeModule()),
        ]),
        ChildRoute(
          'start/details/:countryName',
          child: (_, args) => CountryDetailsPage(
            countryName: args.params['countryName'],
          ),
        )
      ];
}
