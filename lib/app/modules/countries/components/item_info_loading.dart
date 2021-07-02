import 'package:flutter/material.dart';
import 'package:skeleton_animation/skeleton_animation.dart';

class ItemInfoLoading extends StatelessWidget {
  const ItemInfoLoading({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (_, index) => _buildLoading(),
        separatorBuilder: (_, index) => Container(height: 10),
        itemCount: 100);
  }

  _buildLoading() => Container(
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
                  title: Skeleton(
                      height: 15, width: 50, style: SkeletonStyle.text),
                  trailing: Skeleton(
                      height: 15, width: 50, style: SkeletonStyle.text),
                ),
              ),
            ),
            SizedBox(
              height: 70,
              width: 70,
              child: CircleAvatar(backgroundColor: Colors.grey.shade300),
            )
          ],
        ),
      );
}
