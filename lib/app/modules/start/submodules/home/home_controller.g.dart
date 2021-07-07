// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeController, Store {
  Computed<double> _$casesComputed;

  @override
  double get cases => (_$casesComputed ??=
          Computed<double>(() => super.cases, name: '_HomeController.cases'))
      .value;
  Computed<double> _$deathsComputed;

  @override
  double get deaths => (_$deathsComputed ??=
          Computed<double>(() => super.deaths, name: '_HomeController.deaths'))
      .value;
  Computed<double> _$recoveredComputed;

  @override
  double get recovered =>
      (_$recoveredComputed ??= Computed<double>(() => super.recovered,
              name: '_HomeController.recovered'))
          .value;
  Computed<double> _$testesComputed;

  @override
  double get testes => (_$testesComputed ??=
          Computed<double>(() => super.testes, name: '_HomeController.testes'))
      .value;
  Computed<double> _$affectedComputed;

  @override
  double get affected =>
      (_$affectedComputed ??= Computed<double>(() => super.affected,
              name: '_HomeController.affected'))
          .value;

  final _$worldInfoAtom = Atom(name: '_HomeController.worldInfo');

  @override
  WorldInfo get worldInfo {
    _$worldInfoAtom.reportRead();
    return super.worldInfo;
  }

  @override
  set worldInfo(WorldInfo value) {
    _$worldInfoAtom.reportWrite(value, super.worldInfo, () {
      super.worldInfo = value;
    });
  }

  final _$getWorldInfoAsyncAction = AsyncAction('_HomeController.getWorldInfo');

  @override
  Future getWorldInfo() {
    return _$getWorldInfoAsyncAction.run(() => super.getWorldInfo());
  }

  @override
  String toString() {
    return '''
worldInfo: ${worldInfo},
cases: ${cases},
deaths: ${deaths},
recovered: ${recovered},
testes: ${testes},
affected: ${affected}
    ''';
  }
}
