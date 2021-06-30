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
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Modular.to.pushNamed('/countries/details');
        },
      ),
      appBar: AppBar(
        title: Text('Countries'),
      ),
    );
  }
}
