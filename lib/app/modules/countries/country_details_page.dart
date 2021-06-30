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
      body: Center(
        child: Text('DETAILS COUNTRY'),
      ),
    );
  }
}
