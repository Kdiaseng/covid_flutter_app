// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CountryController on _CountryController, Store {
  final _$countriesAtom = Atom(name: '_CountryController.countries');

  @override
  ObservableList<CountryModel> get countries {
    _$countriesAtom.reportRead();
    return super.countries;
  }

  @override
  set countries(ObservableList<CountryModel> value) {
    _$countriesAtom.reportWrite(value, super.countries, () {
      super.countries = value;
    });
  }

  final _$countrySelectedAtom =
      Atom(name: '_CountryController.countrySelected');

  @override
  CountryModel get countrySelected {
    _$countrySelectedAtom.reportRead();
    return super.countrySelected;
  }

  @override
  set countrySelected(CountryModel value) {
    _$countrySelectedAtom.reportWrite(value, super.countrySelected, () {
      super.countrySelected = value;
    });
  }

  final _$isLoadCountrySelectedAtom =
      Atom(name: '_CountryController.isLoadCountrySelected');

  @override
  bool get isLoadCountrySelected {
    _$isLoadCountrySelectedAtom.reportRead();
    return super.isLoadCountrySelected;
  }

  @override
  set isLoadCountrySelected(bool value) {
    _$isLoadCountrySelectedAtom.reportWrite(value, super.isLoadCountrySelected,
        () {
      super.isLoadCountrySelected = value;
    });
  }

  final _$getInfoCountriesAsyncAction =
      AsyncAction('_CountryController.getInfoCountries');

  @override
  Future getInfoCountries() {
    return _$getInfoCountriesAsyncAction.run(() => super.getInfoCountries());
  }

  final _$getInfoByCountriesAsyncAction =
      AsyncAction('_CountryController.getInfoByCountries');

  @override
  Future getInfoByCountries(String country) {
    return _$getInfoByCountriesAsyncAction
        .run(() => super.getInfoByCountries(country));
  }

  @override
  String toString() {
    return '''
countries: ${countries},
countrySelected: ${countrySelected},
isLoadCountrySelected: ${isLoadCountrySelected}
    ''';
  }
}
