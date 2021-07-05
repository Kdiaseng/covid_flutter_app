// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CountryController on _CountryController, Store {
  Computed<ObservableList<CountryModel>> _$countriesFilteredComputed;

  @override
  ObservableList<CountryModel> get countriesFiltered =>
      (_$countriesFilteredComputed ??= Computed<ObservableList<CountryModel>>(
              () => super.countriesFiltered,
              name: '_CountryController.countriesFiltered'))
          .value;

  final _$textControllerFilterAtom =
      Atom(name: '_CountryController.textControllerFilter');

  @override
  TextEditingController get textControllerFilter {
    _$textControllerFilterAtom.reportRead();
    return super.textControllerFilter;
  }

  @override
  set textControllerFilter(TextEditingController value) {
    _$textControllerFilterAtom.reportWrite(value, super.textControllerFilter,
        () {
      super.textControllerFilter = value;
    });
  }

  final _$horizontalTitlePaddingAtom =
      Atom(name: '_CountryController.horizontalTitlePadding');

  @override
  double get horizontalTitlePadding {
    _$horizontalTitlePaddingAtom.reportRead();
    return super.horizontalTitlePadding;
  }

  @override
  set horizontalTitlePadding(double value) {
    _$horizontalTitlePaddingAtom
        .reportWrite(value, super.horizontalTitlePadding, () {
      super.horizontalTitlePadding = value;
    });
  }

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

  final _$filterAtom = Atom(name: '_CountryController.filter');

  @override
  String get filter {
    _$filterAtom.reportRead();
    return super.filter;
  }

  @override
  set filter(String value) {
    _$filterAtom.reportWrite(value, super.filter, () {
      super.filter = value;
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

  final _$_CountryControllerActionController =
      ActionController(name: '_CountryController');

  @override
  dynamic changeFilter(String value) {
    final _$actionInfo = _$_CountryControllerActionController.startAction(
        name: '_CountryController.changeFilter');
    try {
      return super.changeFilter(value);
    } finally {
      _$_CountryControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeHorizontalTitlePadding() {
    final _$actionInfo = _$_CountryControllerActionController.startAction(
        name: '_CountryController.changeHorizontalTitlePadding');
    try {
      return super.changeHorizontalTitlePadding();
    } finally {
      _$_CountryControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
textControllerFilter: ${textControllerFilter},
horizontalTitlePadding: ${horizontalTitlePadding},
countries: ${countries},
filter: ${filter},
countrySelected: ${countrySelected},
isLoadCountrySelected: ${isLoadCountrySelected},
countriesFiltered: ${countriesFiltered}
    ''';
  }
}
