import 'package:flutter/material.dart';
import 'package:skeleton_animation/skeleton_animation.dart';

class ItemInfoLoading extends StatelessWidget {
  const ItemInfoLoading({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _buildLoading();
  }

  _buildLoading() =>Padding(
    padding: const EdgeInsets.all(16.0),
    child: Material(
      elevation: 2,
      borderRadius: BorderRadius.all(Radius.circular(10.0)),
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildItemInfo(),
          _buildItemInfo(),
          _buildItemInfo(),
          _buildItemInfo(),
          _buildItemInfo(),
          _buildItemInfo(),
        ],
      ),
    ),
  );

  _buildItemInfo() => ListTile(
    leading:Skeleton(
        height: 35, width: 35, style: SkeletonStyle.circle),
    title: Skeleton(
        height: 20, width: 100, style: SkeletonStyle.text),
    trailing: Skeleton(
        height: 20, width: 50, style: SkeletonStyle.text)
  );
}
