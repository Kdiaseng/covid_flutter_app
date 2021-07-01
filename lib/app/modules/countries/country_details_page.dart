import 'package:covid_flutter_app/app/modules/countries/components/item_info.dart';
import 'package:covid_flutter_app/app/modules/countries/country_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:skeleton_animation/skeleton_animation.dart';

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
                      expandedHeight: 200,
                      pinned: true,
                      floating: true,
                      flexibleSpace: FlexibleSpaceBar(
                        background: controller.isLoadCountrySelected
                            ? Image.network(
                                controller.countrySelected.countryInfo.flag,
                                fit: BoxFit.cover)
                            : Container(color: Colors.grey.shade300),
                        title: controller.isLoadCountrySelected
                            ? Text(controller.countrySelected.country)
                            : Skeleton(
                                height: 15,
                                width: 100,
                                style: SkeletonStyle.text),
                      ),
                    )),
          ];
        },
        body: Center(
          child: ListView.separated(
              itemBuilder: (_, index) => ItemInfo(),
              separatorBuilder: (_, index) => SizedBox(height: 15),
              itemCount: 10),
        ),
      ),
    );
  }
}
