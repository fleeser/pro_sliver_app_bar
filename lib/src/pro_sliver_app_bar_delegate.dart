import 'dart:math';

import 'package:flutter/material.dart';

import 'package:pro_sliver_app_bar/src/extensions/widget_extension.dart';

class ProSliverAppBarDelegate extends SliverPersistentHeaderDelegate {

  const ProSliverAppBarDelegate({
    required this.collapsedHeight,
    required this.expandedHeight,
    this.elevation = 0.0,
    this.borderRadius = 0.0,
    this.backgroundColor,
    this.background
  });

  final double collapsedHeight;
  final double expandedHeight;
  final double elevation;
  final double borderRadius;
  final Color? backgroundColor;
  final Widget? background;

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    
    final double progress = min(shrinkOffset, maxExtent - minExtent) / (maxExtent - minExtent);
    
    return Material(
      elevation: elevation,
      color: backgroundColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.vertical(bottom: Radius.circular(borderRadius))),
      child: Stack(
        children: [
          if (background != null) background!.transform(progress)
        ]
      )
    );
  }

  @override
  double get maxExtent => expandedHeight;

  @override
  double get minExtent => collapsedHeight;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) => true;
}