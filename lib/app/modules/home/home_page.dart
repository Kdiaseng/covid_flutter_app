import 'package:covid_flutter_app/app/modules/home/components/container_information.dart';
import 'package:covid_flutter_app/app/modules/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'components/card_welcome.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = Modular.get<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.list),
        onPressed: () {
          Modular.to.pushNamed('/countries');
        },
      ),
      body: SafeArea(child: _buildBody()),
    );
  }

  Widget _buildBody() => Column(
        children: [
          CardWelcome(),
          SizedBox(height: 40),
          ContainerInformation(),
        ],
      );
}
