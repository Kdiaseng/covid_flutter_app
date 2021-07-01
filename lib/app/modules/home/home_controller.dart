import 'package:covid_flutter_app/app/modules/home/models/info_world.dart';
import 'package:covid_flutter_app/app/repository/worldometer_repository.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'home_controller.g.dart';

class HomeController = _HomeController with _$HomeController;

abstract class _HomeController with Store {
  final repository = Modular.get<WorldometerRepository>();

  _HomeController() {
    getWorldInfo();
  }

  @observable
  InfoWorld worldInfo;

  @computed
  double get cases => worldInfoIsNotNull ? worldInfo.cases.toDouble() : null;

  @computed
  double get deaths => worldInfoIsNotNull ? worldInfo.deaths.toDouble() : null;

  @computed
  double get recovered =>
      worldInfoIsNotNull ? worldInfo.recovered.toDouble() : null;

  @computed
  double get testes => worldInfoIsNotNull ? worldInfo.tests.toDouble() : null;

  @computed
  double get affected =>
      worldInfoIsNotNull ? worldInfo.affectedCountries.toDouble() : null;

  @action
  getWorldInfo() async {
    worldInfo = await repository.getInfoWorld();
  }

  bool get worldInfoIsNotNull => worldInfo != null;
}
