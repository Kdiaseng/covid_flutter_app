import 'package:covid_flutter_app/app/modules/home/components/card_info.dart';
import 'package:flutter/material.dart';

class ContainerInformation extends StatefulWidget {
  const ContainerInformation({Key key}) : super(key: key);

  @override
  _ContainerInformationState createState() => _ContainerInformationState();
}

class _ContainerInformationState extends State<ContainerInformation> {
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
                  height: 125,
                  child: CardInfo(
                    title: 'Affected',
                    value: 336845.00,
                    color: Colors.amber,
                  ),
                ),
              ),
              SizedBox(width: 15),
              Expanded(
                child: SizedBox(
                    height: 125,
                    child: CardInfo(
                      title: 'Affected',
                      value: 336845.00,
                      color: Colors.red.shade400,
                    )),
              ),
            ],
          ),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: SizedBox(
                    height: 120,
                    child: CardInfo(
                      title: 'Affected',
                      value: 336845.00,
                      color: Colors.greenAccent.shade700,
                    )),
              ),
              SizedBox(width: 15),
              Expanded(
                child: SizedBox(
                    height: 120,
                    child: CardInfo(
                      title: 'Affected',
                      value: 336845.00,
                      color: Colors.blue.shade300,
                    )),
              ),
              SizedBox(width: 15),
              Expanded(
                child: SizedBox(
                    height: 120,
                    child: CardInfo(
                        title: 'Affected',
                        value: 336845.00,
                        color: Colors.deepPurple.shade400)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
