import 'package:flutter/material.dart';

import 'package:pro_sliver_app_bar/src/app_bar_buttons/pro_app_bar_buttons.dart';
import 'package:pro_sliver_app_bar/src/background/pro_background.dart';
import 'package:pro_sliver_app_bar/src/center/pro_center.dart';
import 'package:pro_sliver_app_bar/src/dynamic/pro_dynamic.dart';
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
    this.trailing,
    this.center,
    this.dynamic
  }) : super(key: key);

  final bool pinned;
  final bool floating;
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
        trailing: trailing,
        center: center,
        dynamic: dynamic
      )
    );
  }
}