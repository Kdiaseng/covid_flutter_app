import 'package:covid_flutter_app/app/modules/countries/components/item_info.dart';
import 'package:covid_flutter_app/app/modules/countries/country_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:skeleton_animation/skeleton_animation.dart';

import 'components/item_info_loading.dart';

class CountryDetailsPage extends StatefulWidget {
  final String countryName;

  const CountryDetailsPage({Key key, @required this.countryName})
      : super(key: key);

  @override
  _CountryDetailsPageState createState() => _CountryDetailsPageState();
}

class _CountryDetailsPageState extends State<CountryDetailsPage> {
  final controller = Modular.get<CountryController>();

  @override
  void initState() {
    controller.getInfoByCountries(widget.countryName);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (_, innerBoxIsScrolled) {
          return [
            Observer(
              builder: (_) => SliverAppBar(
                expandedHeight: 170,
                pinned: true,
                floating: true,
                flexibleSpace: FlexibleSpaceBar(
                  titlePadding: EdgeInsets.all(16.0),
                  background: controller.isLoadCountrySelected
                      ? Image.network(
                          controller.countrySelected.countryInfo.flag,
                          fit: BoxFit.cover)
                      : Container(color: Colors.grey.shade300),
                  title: controller.isLoadCountrySelected
                      ? Text(controller.countrySelected.country)
                      : Skeleton(
                          height: 15, width: 100, style: SkeletonStyle.text),
                ),
              ),
            ),
          ];
        },
        body: Center(
          child: Observer(
            builder: (_) => controller.isLoadCountrySelected
                ? ListView(children: _buildInfoList())
                : ItemInfoLoading(),
          ),
        ),
      ),
    );
  }

  List<Widget> _buildInfoList() {
    final countrySelected = controller.countrySelected;
    return [
      ItemInfo(
          title: "Population",
          value: countrySelected.population.toString(),
          iso3: countrySelected.countryInfo.iso3),
      SizedBox(height: 10),
      ItemInfo(
          title: "Cases",
          value: countrySelected.cases.toString(),
          iso3: countrySelected.countryInfo.iso3),
      SizedBox(height: 10),
      ItemInfo(
          title: "Deaths",
          value: countrySelected.deaths.toString(),
          iso3: countrySelected.countryInfo.iso3),
      SizedBox(height: 10),
      ItemInfo(
          title: "Recovered",
          value: countrySelected.recovered.toString(),
          iso3: countrySelected.countryInfo.iso3),
      SizedBox(height: 10),
      ItemInfo(
          title: "Tests",
          value: countrySelected.tests.toString(),
          iso3: countrySelected.countryInfo.iso3),
      SizedBox(height: 10),
      ItemInfo(
          title: "Critical",
          value: countrySelected.critical.toString(),
          iso3: countrySelected.countryInfo.iso3)
    ];
  }
}
