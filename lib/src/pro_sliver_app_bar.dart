import 'package:flutter/material.dart';

import 'package:pro_sliver_app_bar/src/buttons/pro_leading.dart';
import 'package:pro_sliver_app_bar/src/buttons/pro_trailing.dart';
import 'package:pro_sliver_app_bar/src/pro_sliver_app_bar_delegate.dart';

class ProSliverAppBar extends StatelessWidget {

  const ProSliverAppBar({ 
    Key? key,
    this.pinned = true,
    this.floating = false,
    required this.collapsedHeight,
    required this.expandedHeight,
    this.elevation = 0.0,
    this.borderRadius = 0.0,
    this.backgroundColor,
    this.background,
    this.leading,
    this.trailing
  }) : super(key: key);

  final bool pinned;
  final bool floating;
  final double collapsedHeight;
  final double expandedHeight;
  final double elevation;
  final double borderRadius;
  final Color? backgroundColor;
  final Widget? background;
  final ProLeading? leading;
  final ProTrailing? trailing;

  @override
  Widget build(BuildContext context) {
    return SliverPersistentHeader(
      pinned: pinned,
      floating: floating,
      delegate: ProSliverAppBarDelegate(
        collapsedHeight: collapsedHeight, 
        expandedHeight: expandedHeight,
        elevation: elevation,
        borderRadius: borderRadius,
        backgroundColor: backgroundColor,
        background: background,
        leading: leading,
        trailing: trailing
      )
    );
  }
}