import 'package:covid_flutter_app/app/modules/countries/models/country_model.dart';
import 'package:covid_flutter_app/app/repository/worldometer_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'country_controller.g.dart';

class CountryController = _CountryController with _$CountryController;

abstract class _CountryController with Store {
  final repository = Modular.get<WorldometerRepository>();

  @observable
  TextEditingController textControllerFilter = TextEditingController();

  _CountryController() {
    getInfoCountries();
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
}
