import 'package:covid_flutter_app/app/utils/icons_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:skeleton_animation/skeleton_animation.dart';

import '../components/item_info_loading.dart';
import '../country_controller.dart';

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
    controller.scrollController
      ..addListener(() {
        controller.changeHorizontalTitlePadding();
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        controller: controller.scrollController,
        headerSliverBuilder: (_, innerBoxIsScrolled) {
          return [
            Observer(
              builder: (_) => SliverAppBar(
                expandedHeight: controller.kExpandedHeight,
                pinned: true,
                floating: true,
                flexibleSpace: FlexibleSpaceBar(
                  collapseMode: CollapseMode.pin,
                  centerTitle: false,
                  titlePadding: EdgeInsets.symmetric(
                      vertical: 16,
                      horizontal: controller.horizontalTitlePadding),
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
                ? _buildCardInfo()
                : ItemInfoLoading(),
          ),
        ),
      ),
    );
  }

  _buildCardInfo() {
    final countrySelected = controller.countrySelected;
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Material(
        elevation: 2,
        borderRadius: BorderRadius.all(Radius.circular(16.0)),
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildItemInfo('Population', countrySelected.population.toString()),
            _buildItemInfo('Cases', countrySelected.cases.toString()),
            _buildItemInfo('Deaths', countrySelected.deaths.toString()),
            _buildItemInfo('Recovered', countrySelected.recovered.toString()),
            _buildItemInfo('Tests', countrySelected.tests.toString()),
            _buildItemInfo('Critical', countrySelected.critical.toString()),
          ],
        ),
      ),
    );
  }

  _buildItemInfo(String title, String value) => ListTile(
        leading:
            Icon(CovIcons.coronavirus, color: controller.getColor(), size: 35),
        title: Text(
          title,
          style: TextStyle(fontWeight: FontWeight.w400),
        ),
        trailing: Text(
          value,
          style: TextStyle(fontSize: 18),
        ),
      );
}
