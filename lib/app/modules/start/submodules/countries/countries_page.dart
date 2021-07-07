import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'components/item_country.dart';
import 'components/item_country_loading.dart';
import 'country_controller.dart';

class CountriesPage extends StatefulWidget {
  const CountriesPage({Key key}) : super(key: key);

  @override
  _CountriesPageState createState() => _CountriesPageState();
}

class _CountriesPageState extends State<CountriesPage> {
  final controller = Modular.get<CountryController>();

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.withOpacity(.1),
        body: Column(
          children: [_buildSearch, Expanded(child: _buildBody)],
        ),
      ),
    );
  }

  get _buildBody => Observer(
        builder: (_) => controller.isCountriesLoaded
            ? ListView.separated(
                shrinkWrap: true,
                itemBuilder: (_, index) {
                  final countryItem = controller.countriesFiltered[index];
                  return ItemCountry(
                    color: controller.getColor(),
                    countryModel: countryItem,
                    onClick: () {
                      Modular.to.pushNamed(
                          '/countries/details/${countryItem.country}');
                    },
                  );
                },
                itemCount: controller.countriesFiltered.length,
                separatorBuilder: (_, int index) {
                  return Container(height: 5);
                },
              )
            : ItemCountryLoading(),
      );

  get _buildSearch => Padding(
        padding: const EdgeInsets.all(16.0),
        child: Material(
          borderRadius: BorderRadius.all(Radius.circular(25)),
          elevation: 5,
          child: TextFormField(
            onChanged: controller.changeFilter,
            decoration: InputDecoration(
              border: OutlineInputBorder(borderSide: BorderSide.none),
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 15, horizontal: 16),
              hintText: 'Enter to country',
              suffixIcon: Icon(Icons.search),
            ),
          ),
        ),
      );
}
