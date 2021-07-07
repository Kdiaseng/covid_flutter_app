import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../home_controller.dart';
import 'card_info.dart';

class ContainerInformation extends StatefulWidget {
  const ContainerInformation({Key key}) : super(key: key);

  @override
  _ContainerInformationState createState() => _ContainerInformationState();
}

class _ContainerInformationState extends State<ContainerInformation> {
  final controller = Modular.get<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: SizedBox(
                  height: 110,
                  child: Observer(
                    builder: (_) => CardInfo(
                      title: 'Cases',
                      value: controller.cases,
                      color: Colors.amber,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 15),
              Expanded(
                child: SizedBox(
                  height: 110,
                  child: Observer(
                    builder: (_) => CardInfo(
                      title: 'Deaths',
                      value: controller.deaths,
                      color: Colors.red.shade400,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: SizedBox(
                  height: 110,
                  child: Observer(
                    builder: (_) => CardInfo(
                      title: 'Recovered',
                      value: controller.recovered,
                      color: Colors.greenAccent.shade700,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 15),
              Expanded(
                child: SizedBox(
                  height: 110,
                  child: Observer(
                    builder: (_) => CardInfo(
                      title: 'Tests',
                      value: controller.testes,
                      color: Colors.blue.shade300,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 15),
              Expanded(
                child: SizedBox(
                  height: 110,
                  child: Observer(
                    builder: (_) => CardInfo(
                        title: 'Affected Countries',
                        value: controller.affected,
                        color: Colors.deepPurple.shade400),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
