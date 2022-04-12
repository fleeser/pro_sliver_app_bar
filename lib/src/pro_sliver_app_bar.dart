import 'package:flutter/material.dart';

import 'package:pro_sliver_app_bar/src/pro_sliver_app_bar_delegate.dart';

class ProSliverAppBar extends StatelessWidget {

  const ProSliverAppBar({ 
    Key? key,
    this.pinned = true,
    this.floating = false,
    required this.minHeight,
    required this.maxHeight,
    this.elevation = 0.0,
    this.borderRadius = 0.0,
    this.backgroundColor
  }) : super(key: key);

  final bool pinned;
  final bool floating;
  final double minHeight;
  final double maxHeight;
  final double elevation;
  final double borderRadius;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return SliverPersistentHeader(
      pinned: pinned,
      floating: floating,
      delegate: ProSliverAppBarDelegate(
        minHeight: minHeight, 
        maxHeight: maxHeight,
        elevation: elevation,
        borderRadius: borderRadius,
        backgroundColor: backgroundColor
      )
    );
  }
}