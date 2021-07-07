import 'package:flutter/material.dart';
import 'package:skeleton_animation/skeleton_animation.dart';

class ItemCountryLoading extends StatelessWidget {
  const ItemCountryLoading({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (_, index) => _buildLoading(),
        separatorBuilder: (_, index) => Container(height: 10),
        itemCount: 100);
  }

  _buildLoading() => Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 5, bottom: 5),
        child: Material(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          elevation: 5,
          child: ListTile(
            leading: CircleAvatar(backgroundColor: Colors.grey.shade300),
            title: Skeleton(height: 15, width: 100, style: SkeletonStyle.text),
            subtitle:
                Skeleton(height: 15, width: 80, style: SkeletonStyle.text),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Skeleton(height: 15, width: 100, style: SkeletonStyle.text),
                SizedBox(height: 5),
                Skeleton(height: 15, width: 80, style: SkeletonStyle.text),
              ],
            ),
          ),
        ),
      );
}
