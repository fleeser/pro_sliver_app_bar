import 'dart:math';

import 'package:flutter/material.dart';

import 'package:pro_sliver_app_bar/src/buttons/pro_leading.dart';
import 'package:pro_sliver_app_bar/src/buttons/pro_trailing.dart';
import 'package:pro_sliver_app_bar/src/extensions/widget_extension.dart';
import 'package:pro_sliver_app_bar/src/helpers/app_bar_buttons_size.dart';
import 'package:pro_sliver_app_bar/src/title/pro_static_title.dart';

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
    this.title
  });

  final double collapsedHeight;
  final double expandedHeight;
  final double elevation;
  final double borderRadius;
  final Color? backgroundColor;
  final Widget? background;
  final ProLeading? leading;
  final ProTrailing? trailing;
  final ProStaticTitle? title;

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    
    final double progress = min(shrinkOffset, maxExtent - minExtent) / (maxExtent - minExtent);
    final EdgeInsets devicePadding = MediaQuery.of(context).padding;
    final Size deviceSize = MediaQuery.of(context).size;
    
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
              children: [
                if (leading != null) SizedBox(
                  width: title != null && title!.textAlign == TextAlign.center ? ((leading != null && (leading!.children?.isNotEmpty ?? false)) || (trailing != null && (trailing!.children?.isNotEmpty ?? false))) ? max(leading!.paddingToStart + sizeOfButtons(leading!.children) + ((leading!.children?.length ?? 0) - 1) * leading!.paddingBetweenChildren, trailing!.paddingToEnd + sizeOfButtons(trailing!.children) + ((trailing!.children?.length ?? 0) - 1) * trailing!.paddingBetweenChildren) : 0.0 : null,
                  child: leading!.transform(progress),
                ),
                Expanded(child: title?.transform(progress) ?? const SizedBox()),
                if (trailing != null) SizedBox(
                  width: title != null && title!.textAlign == TextAlign.center ? ((leading != null && (leading!.children?.isNotEmpty ?? false)) || (trailing != null && (trailing!.children?.isNotEmpty ?? false))) ? max(leading!.paddingToStart + sizeOfButtons(leading!.children) + ((leading!.children?.length ?? 0) - 1) * leading!.paddingBetweenChildren, trailing!.paddingToEnd + sizeOfButtons(trailing!.children) + ((trailing!.children?.length ?? 0) - 1) * trailing!.paddingBetweenChildren) : 0.0 : null,
                  child: trailing!.transform(progress)
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