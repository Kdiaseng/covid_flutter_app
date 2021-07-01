import 'package:covid_flutter_app/app/modules/countries/components/item_info.dart';
import 'package:flutter/material.dart';

class CountryDetailsPage extends StatefulWidget {
  const CountryDetailsPage({Key key}) : super(key: key);

  @override
  _CountryDetailsPageState createState() => _CountryDetailsPageState();
}

class _CountryDetailsPageState extends State<CountryDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (_, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              expandedHeight: 200,
              pinned: true,
              floating: true,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.network(
                    'https://disease.sh/assets/img/flags/br.png',
                    fit: BoxFit.cover),
                title: Text('Brazil'),
              ),
            )
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
