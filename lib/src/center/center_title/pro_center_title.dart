import 'package:flutter/material.dart';

import 'package:pro_sliver_app_bar/src/center/center_title/pro_center_title_widget.dart';
import 'package:pro_sliver_app_bar/src/center/pro_center.dart';

class ProCenterTitle extends ProCenter {
  
  const ProCenterTitle({ 
    Key? key,
    required this.title,
    this.textAlign = TextAlign.center,
    this.color,
    this.padding = 12.0
  }) : super(key: key, centered: textAlign == TextAlign.center);

  final String title;
  final TextAlign textAlign;
  final Color? color;
  final double padding;

  @override
  Widget build(BuildContext context) {
    throw UnimplementedError();
  }

  @override
  Widget transform(double progress) {
    return ProCenterTitleWidget(this, progress);
  }
}