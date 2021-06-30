import 'package:flutter/material.dart';

class CardInfo extends StatelessWidget {
  final String title;
  final double value;
  final Color color;

  const CardInfo(
      {Key key,
      @required this.title,
      @required this.value,
      @required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      elevation: 5,
      color: color,
      child: Container(
        padding: const EdgeInsets.all(12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(color: Colors.white),
            ),
            Text(
              "$value",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
