import 'dart:math';

import 'package:flutter/material.dart';

import 'package:pro_sliver_app_bar/src/constants.dart';
import 'package:pro_sliver_app_bar/src/dynamic/dynamic_image_title/pro_dynamic_image_title_widget.dart';
import 'package:pro_sliver_app_bar/src/dynamic/pro_dynamic.dart';
import 'package:pro_sliver_app_bar/src/enums/pro_alignment.dart';
import 'package:pro_sliver_app_bar/src/helpers/calculation_helpers.dart';

class ProDynamicImageTitle extends ProDynamic {
  
  const ProDynamicImageTitle({ 
    Key? key,
    required this.title,
    required this.image,
    this.expandedImageSize = 50.0,
    this.collapsedImageSize = kToolbarHeight - 10.0,
    this.expandedPaddingToBottom = 0.0,
    this.expandedPadding = 12.0,
    this.expandedAlignment = ProAlignment.left,
    this.collapsedAlignment = ProAlignment.center,
    this.expandedFontSize = kExpandedTitleSize,
    this.collapsedFontSize = kCollapsedTitleSize,
    this.paddingBetweenImageAndTitle = 12.0,
    this.expandedColor = Colors.black,
    this.collapsedColor = Colors.black,
    this.expandedFontWeight = FontWeight.w600,
    this.collapsedFontWeight = FontWeight.w600,
    this.showImageOnlyWhenCollapsed = false
  }) : super(key: key);

  final String title;
  final ImageProvider image;
  final double expandedImageSize;
  final double collapsedImageSize;
  final double expandedPaddingToBottom;
  final FontWeight expandedFontWeight;
  final FontWeight collapsedFontWeight;
  final double expandedFontSize;
  final double collapsedFontSize;
  final double expandedPadding;
  final ProAlignment expandedAlignment;
  final ProAlignment collapsedAlignment;
  final double paddingBetweenImageAndTitle;
  final Color expandedColor;
  final Color collapsedColor;
  final bool showImageOnlyWhenCollapsed;

  @override
  Widget build(BuildContext context) {
    throw UnimplementedError();
  }

  @override
  Widget transform(double progress, double leftAppBarButtonInset, double rightBarButtonInset) {
    return ProDynamicImageTitleWidget(this, progress, leftAppBarButtonInset, rightBarButtonInset);
  }

  @override 
  double getHeight(double progress) {
    return calculateValue(expandedPaddingToBottom, (kToolbarHeight - max(collapsedFontSize, collapsedImageSize)) / 2.0, progress) + calculateValue(showImageOnlyWhenCollapsed ? expandedFontSize : max(expandedFontSize, expandedImageSize), max(collapsedFontSize, collapsedImageSize), progress);
  }
}