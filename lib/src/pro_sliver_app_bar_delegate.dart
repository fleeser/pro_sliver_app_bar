import 'package:flutter/material.dart';

class ProSliverAppBarDelegate extends SliverPersistentHeaderDelegate {

  const ProSliverAppBarDelegate({
    required this.minHeight,
    required this.maxHeight,
    this.elevation = 0.0,
    this.borderRadius = 0.0,
    this.backgroundColor
  });

  final double minHeight;
  final double maxHeight;
  final double elevation;
  final double borderRadius;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Material(
      elevation: elevation,
      color: backgroundColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.vertical(bottom: Radius.circular(borderRadius))),
      child: Stack(
        fit: StackFit.expand
      )
    );
  }

  @override
  double get maxExtent => maxHeight;

  @override
  double get minExtent => minHeight;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) => true;
}