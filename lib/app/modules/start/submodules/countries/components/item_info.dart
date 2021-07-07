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
                title: Row(
                  children: [
                    SizedBox(width: 50),
                    Text(
                      title,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                    ),
                  ],
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
            child: CircleAvatar(
                child: Text(
              iso3,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            )),
          )
        ],
      ),
    );
  }
}
