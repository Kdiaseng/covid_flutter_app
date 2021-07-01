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

  final _$getInfoCountriesAsyncAction =
      AsyncAction('_CountryController.getInfoCountries');

  @override
  Future getInfoCountries() {
    return _$getInfoCountriesAsyncAction.run(() => super.getInfoCountries());
  }

  @override
  String toString() {
    return '''
countries: ${countries}
    ''';
  }
}
