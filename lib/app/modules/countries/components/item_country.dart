import 'package:flutter/material.dart';

class ItemCountry extends StatelessWidget {
  final Function onClick;

  const ItemCountry({Key key, @required this.onClick}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.all(Radius.circular(8)),
      elevation: 5,
      color: Colors.amber,
      child: InkWell(
        onTap: () {
          onClick();
        },
        child: ListTile(
          leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQX48JYpPPow8zQXp34oKHyqRbECSs1dUpOdw&usqp=CAU')),
          title: Text('Brazil'),
          subtitle: Text('American'),
          trailing: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Population"),
              SizedBox(height: 5),
              Text("270.000.000"),
            ],
          ),
        ),
      ),
    );
  }
}
