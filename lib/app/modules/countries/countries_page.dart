import 'package:covid_flutter_app/app/modules/countries/components/item_country.dart';
import 'package:covid_flutter_app/app/modules/countries/country_controller.dart';
import 'package:covid_flutter_app/app/modules/countries/components/item_country_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CountriesPage extends StatefulWidget {
  const CountriesPage({Key key}) : super(key: key);

  @override
  _CountriesPageState createState() => _CountriesPageState();
}

class _CountriesPageState extends State<CountriesPage> {
  final controller = Modular.get<CountryController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Countries'),
      ),
      body: _buildBody(),
    );
  }

  _buildBody() => Observer(
        builder: (_) => controller.isCountriesLoaded
            ? ListView.separated(
                itemBuilder: (_, index) {
                  return ItemCountry(
                    countryModel: controller.countries[index],
                    onClick: () {
                      Modular.to.pushNamed(
                          '/countries/details/${controller.countries[index].country}');
                    },
                  );
                },
                itemCount: controller.countries.length,
                separatorBuilder: (BuildContext context, int index) {
                  return Container(height: 10);
                },
              )
            : ItemCountryLoading(),
      );
}
