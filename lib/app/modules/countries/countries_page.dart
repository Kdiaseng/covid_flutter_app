import 'package:covid_flutter_app/app/modules/countries/components/item_country.dart';
import 'package:covid_flutter_app/app/modules/home/components/container_information.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CountriesPage extends StatefulWidget {
  const CountriesPage({Key key}) : super(key: key);

  @override
  _CountriesPageState createState() => _CountriesPageState();
}

class _CountriesPageState extends State<CountriesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Countries'),
      ),
      body: _buildBody(),
    );
  }

  _buildBody() => ListView.separated(
        itemBuilder: (_, index) {
          return ItemCountry(
            onClick: () {
              Modular.to.pushNamed('/countries/details');
            },
          );
        },
        itemCount: 10,
        separatorBuilder: (BuildContext context, int index) {
          return Container(height: 10);
        },
      );
}
