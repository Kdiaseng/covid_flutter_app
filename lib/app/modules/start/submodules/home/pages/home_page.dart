import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../components/card_welcome.dart';
import '../components/container_information.dart';
import '../home_controller.dart';

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
      backgroundColor: Colors.grey.withOpacity(.1),
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
