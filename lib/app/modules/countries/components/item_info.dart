import 'package:flutter/material.dart';

class ItemInfo extends StatelessWidget {
  final String title;
  final String value;
  final String iso3;

  const ItemInfo({
    Key key,
    @required this.title,
    @required this.value,
    @required this.iso3,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 5, bottom: 5),
            child: Material(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(8),
                  bottomRight: Radius.circular(8)),
              elevation: 4,
              child: ListTile(
                title: Text(
                  title,
                  textAlign: TextAlign.center,
                ),
                trailing: Text(
                  value,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 70,
            width: 70,
            child: CircleAvatar(child: Text(iso3)),
          )
        ],
      ),
    );
  }
}
