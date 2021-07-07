import 'package:covid_flutter_app/app/utils/icons_constants.dart';
import 'package:flutter/material.dart';

class CardWelcome extends StatelessWidget {
  const CardWelcome({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10)),
      elevation: 3,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              CovIcons.coronavirus_outlined,
              size: 40,
              color: Colors.red,
            ),
            SizedBox(height: 10),
            Text(
              'Stop being denial',
              style: TextStyle(fontWeight: FontWeight.normal, fontSize: 20),
            )
          ],
        ),
      ),
    );
  }
}
