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

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0.0,
        title: Padding(
          padding: const EdgeInsets.only(right: 16),
          child: Material(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            elevation: 4,
            child: TextFormField(
              onChanged: controller.changeFilter,
              decoration: InputDecoration(
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 16),
                hintText: 'Enter to country',
                suffixIcon: Icon(Icons.search),
              ),
            ),
          ),
        ),
      ),
      body: _buildBody(),
    );
  }

  _buildBody() => Observer(
        builder: (_) => controller.isCountriesLoaded
            ? ListView.separated(
                shrinkWrap: true,
                itemBuilder: (_, index) {
                  return ItemCountry(
                    countryModel: controller.countriesFiltered[index],
                    onClick: () {
                      Modular.to.pushNamed(
                          '/countries/details/${controller.countriesFiltered[index].country}');
                    },
                  );
                },
                itemCount: controller.countriesFiltered.length,
                separatorBuilder: (BuildContext context, int index) {
                  return Container(height: 8);
                },
              )
            : ItemCountryLoading(),
      );
}
