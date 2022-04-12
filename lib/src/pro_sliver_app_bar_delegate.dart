import 'dart:math';

import 'package:flutter/material.dart';

import 'package:pro_sliver_app_bar/src/extensions/widget_extension.dart';

class ProSliverAppBarDelegate extends SliverPersistentHeaderDelegate {

  const ProSliverAppBarDelegate({
    required this.minHeight,
    required this.maxHeight,
    this.elevation = 0.0,
    this.borderRadius = 0.0,
    this.backgroundColor,
    this.background
  });

  final double minHeight;
  final double maxHeight;
  final double elevation;
  final double borderRadius;
  final Color? backgroundColor;
  final Widget? background;

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    
    final progress = min(shrinkOffset, maxExtent - minExtent) / (maxExtent - minExtent);
    
    return Material(
      elevation: elevation,
      color: backgroundColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.vertical(bottom: Radius.circular(borderRadius))),
      child: Stack(
        fit: StackFit.expand,
        children: [
          if (background != null) background!.transform(progress)
        ]
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