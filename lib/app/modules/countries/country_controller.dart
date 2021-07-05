import 'package:covid_flutter_app/app/modules/countries/models/country_model.dart';
import 'package:covid_flutter_app/app/repository/worldometer_repository.dart';
import 'package:covid_flutter_app/app/utils/colors_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'country_controller.g.dart';

class CountryController = _CountryController with _$CountryController;

abstract class _CountryController with Store {
  final repository = Modular.get<WorldometerRepository>();

  int indexColor = 0;
  ScrollController scrollController;
  double kExpandedHeight = 200;

  @observable
  TextEditingController textControllerFilter = TextEditingController();

  @observable
  double horizontalTitlePadding = 20;

  _CountryController() {
    getInfoCountries();
    scrollController = ScrollController();
  }

  @observable
  var countries = ObservableList<CountryModel>.of([]);

  @observable
  String filter;

  @observable
  CountryModel countrySelected;

  @action
  changeFilter(String value) {
    print('$value');
    filter = value;
  }

  @action
  changeHorizontalTitlePadding() {
    const kBasePadding = 25.0;
    const kMultiplier = 0.5;

    if (scrollController.hasClients) {
      if (scrollController.offset < (kExpandedHeight / 2)) {
        // In case 50%-100% of the expanded height is viewed
        return kBasePadding;
      }

      if (scrollController.offset > (kExpandedHeight - kToolbarHeight)) {
        // In case 0% of the expanded height is viewed
        return (kExpandedHeight / 2 - kToolbarHeight) * kMultiplier +
            kBasePadding;
      }

      // In case 0%-50% of the expanded height is viewed
      horizontalTitlePadding =
          (scrollController.offset - (kExpandedHeight / 2)) * kMultiplier +
              kBasePadding;
    }
  }

  @action
  getInfoCountries() async {
    final listCountries = await repository.getInfoCountries();
    countries = listCountries.asObservable();
  }

  @computed
  ObservableList<CountryModel> get countriesFiltered {
    if (filter == null || filter.isEmpty) {
      return countries;
    }

    final list = countries
        .where((e) => e.country.toLowerCase().contains(filter.toLowerCase()))
        .toList();

    return list.asObservable();
  }

  @observable
  bool isLoadCountrySelected = false;

  @action
  getInfoByCountries(String country) async {
    isLoadCountrySelected = false;
    countrySelected = await repository.getInfoByCountry(country);
    isLoadCountrySelected = true;
  }

  bool get isCountriesLoaded => countries.isNotEmpty;

  Color getColor() {
    if (indexColor == ColorsApp.listColors.length - 1) {
      indexColor = 0;
    }
    final color = ColorsApp.listColors[indexColor];

    indexColor++;
    return color;
  }
}
