import 'package:covid_flutter_app/app/repository/worldometer_repository.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'home_controller.dart';
import 'home_page.dart';

class HomeModule extends Module {
  @override
  List<Bind<Object>> get binds => [
        Bind((i) => WorldometerRepository()),
        Bind.singleton((i) => HomeController())
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/home',
            child: (_, args) => HomePage(), transition: TransitionType.downToUp)
      ];
}
