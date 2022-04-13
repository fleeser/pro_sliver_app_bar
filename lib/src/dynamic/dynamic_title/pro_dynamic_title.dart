import 'package:flutter/material.dart';

import 'package:pro_sliver_app_bar/src/constants.dart';
import 'package:pro_sliver_app_bar/src/dynamic/dynamic_title/pro_dynamic_title_widget.dart';
import 'package:pro_sliver_app_bar/src/dynamic/pro_dynamic.dart';
import 'package:pro_sliver_app_bar/src/enums/pro_alignment.dart';
import 'package:pro_sliver_app_bar/src/helpers/calculation_helpers.dart';

class ProDynamicTitle extends ProDynamic {
  
  const ProDynamicTitle({ 
    Key? key,
    required this.title,
    this.expandedFontSize = kExpandedTitleSize,
    this.collapsedFontSize = kCollapsedTitleSize,
    this.expandedColor = Colors.black,
    this.collapsedColor = Colors.black,
    this.expandedFontWeight = FontWeight.w600,
    this.collapsedFontWeight = FontWeight.w600,
    this.expandedAlignment = ProAlignment.left,
    this.collapsedAlignment = ProAlignment.center,
    this.expandedPadding = 12.0,
    this.collapsedPadding = 12.0,
    this.expandedPaddingToBottom = 0.0
  }) : super(
    key: key,
    bottomPadding: expandedPaddingToBottom
  );

  final String title;
  final double expandedFontSize;
  final double collapsedFontSize;
  final Color? expandedColor;
  final Color? collapsedColor;
  final FontWeight expandedFontWeight;
  final FontWeight collapsedFontWeight;
  final ProAlignment expandedAlignment;
  final ProAlignment collapsedAlignment;
  final double expandedPadding;
  final double collapsedPadding;
  final double expandedPaddingToBottom;

  @override
  Widget build(BuildContext context) {
    throw UnimplementedError();
  }

  @override
  Widget transform(double progress, double leftAppBarButtonInset, double rightBarButtonInset) {
    return ProDynamicTitleWidget(this, progress, leftAppBarButtonInset, rightBarButtonInset);
  }

  @override 
  double getHeight(double progress) {
    return calculateValue(expandedPaddingToBottom, (kToolbarHeight - collapsedFontSize) / 2.0, progress) + calculateValue(expandedFontSize, collapsedFontSize, progress);
  }
}