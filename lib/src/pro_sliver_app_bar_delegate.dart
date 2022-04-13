import 'dart:math';

import 'package:flutter/material.dart';

import 'package:pro_sliver_app_bar/src/app_bar_buttons/pro_app_bar_buttons.dart';
import 'package:pro_sliver_app_bar/src/background/pro_background.dart';
import 'package:pro_sliver_app_bar/src/center/pro_center.dart';
import 'package:pro_sliver_app_bar/src/dynamic/pro_dynamic.dart';

class ProSliverAppBarDelegate extends SliverPersistentHeaderDelegate {

  const ProSliverAppBarDelegate({
    required this.collapsedHeight,
    required this.expandedHeight,
    this.elevation = 0.0,
    this.borderRadius = 0.0,
    this.backgroundColor,
    this.background,
    this.leading,
    this.trailing,
    this.center,
    this.dynamic
  });

  final double collapsedHeight;
  final double expandedHeight;
  final double elevation;
  final double borderRadius;
  final Color? backgroundColor;
  final ProBackground? background;
  final ProAppBarButtons? leading;
  final ProAppBarButtons? trailing;
  final ProCenter? center;
  final ProDynamic? dynamic;

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    
    final double progress = min(shrinkOffset, maxExtent - minExtent) / (maxExtent - minExtent);
    final EdgeInsets devicePadding = MediaQuery.of(context).padding;
    final Size deviceSize = MediaQuery.of(context).size;

    final double? appBarButtonsBoxWidth = center != null && center!.centered ? max(leading != null && leading!.buttons.isNotEmpty ? leading!.paddingToEdge + leading!.buttons.length * (kToolbarHeight - 10.0 + leading!.paddingBetween) - leading!.paddingBetween : 0.0, trailing != null && trailing!.buttons.isNotEmpty ? trailing!.paddingToEdge + trailing!.buttons.length * (kToolbarHeight - 10.0 + trailing!.paddingBetween) - trailing!.paddingBetween : 0.0) : null;
    
    return Material(
      elevation: elevation,
      color: backgroundColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.vertical(bottom: Radius.circular(borderRadius))),
      child: Stack(
        fit: StackFit.expand,
        children: [
          if (background != null) background!.transform(progress),
          Positioned(
            top: devicePadding.top,
            height: kToolbarHeight,
            left: devicePadding.left,
            width: deviceSize.width - devicePadding.left - devicePadding.right,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                if (leading != null) SizedBox(
                  width: appBarButtonsBoxWidth,
                  child: Row(
                    children: List.generate(leading!.buttons.length, (int index) => Padding(
                      padding: EdgeInsets.only(
                        left: index == 0 ? leading!.paddingToEdge : leading!.paddingBetween
                      ),
                      child: leading!.buttons[index].transform(progress)
                    ))
                  )
                ),
                if (center != null) Expanded(child: center!.transform(progress)),
                if (trailing != null) SizedBox(
                  width: appBarButtonsBoxWidth,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: List.generate(trailing!.buttons.length, (int index) => Padding(
                      padding: EdgeInsets.only(
                        right: index == trailing!.buttons.length - 1 ? trailing!.paddingToEdge : trailing!.paddingBetween
                      ),
                      child: trailing!.buttons[index].transform(progress)
                    ))
                  )
                )
              ]
            )
          )
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