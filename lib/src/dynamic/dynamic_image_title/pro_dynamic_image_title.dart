import 'dart:math';

import 'package:flutter/material.dart';

import 'package:pro_sliver_app_bar/src/constants.dart';
import 'package:pro_sliver_app_bar/src/dynamic/dynamic_image_title/pro_dynamic_image_title_widget.dart';
import 'package:pro_sliver_app_bar/src/dynamic/pro_dynamic.dart';
import 'package:pro_sliver_app_bar/src/enums/pro_alignment.dart';
import 'package:pro_sliver_app_bar/src/helpers/calculation_helpers.dart';
import 'package:pro_sliver_app_bar/src/image/pro_image.dart';

class ProDynamicImageTitle extends ProDynamic {
  
  const ProDynamicImageTitle({ 
    Key? key,
    required this.title,
    this.fontFamily,
    required this.image,
    this.expandedImageSize = 50.0,
    this.collapsedImageSize = kToolbarHeight - 10.0,
    this.expandedPaddingToBottom = 0.0,
    this.expandedPadding = 12.0,
    this.collapsedPadding = 12.0,
    this.expandedAlignment = ProAlignment.left,
    this.collapsedAlignment = ProAlignment.center,
    this.expandedFontSize = kExpandedTitleSize,
    this.collapsedFontSize = kCollapsedTitleSize,
    this.paddingBetweenImageAndTitle = 12.0,
    this.expandedColor = Colors.black,
    this.collapsedColor = Colors.black,
    this.expandedFontWeight = FontWeight.w600,
    this.collapsedFontWeight = FontWeight.w600,
    this.showImageOnlyWhenCollapsed = false,

    this.friendsWidget
  }) : super(key: key);

  final String title;
  final String? fontFamily;
  final ProImage image;
  final double expandedImageSize;
  final double collapsedImageSize;
  final double expandedPaddingToBottom;
  final FontWeight expandedFontWeight;
  final FontWeight collapsedFontWeight;
  final double expandedFontSize;
  final double collapsedFontSize;
  final double expandedPadding;
  final double collapsedPadding;
  final ProAlignment expandedAlignment;
  final ProAlignment collapsedAlignment;
  final double paddingBetweenImageAndTitle;
  final Color expandedColor;
  final Color collapsedColor;
  final bool showImageOnlyWhenCollapsed;
  final Widget? friendsWidget;

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
    return calculateValue(friendsWidget != null ? 24.0 - ((kToolbarHeight - 10.0) - expandedFontSize) / 2.0 : 24.0, friendsWidget != null ? 5.0 : (kToolbarHeight - max(collapsedFontSize, collapsedImageSize)) / 2.0, progress) + calculateValue(friendsWidget != null ? (kToolbarHeight - 10.0) : showImageOnlyWhenCollapsed ? expandedFontSize : max(expandedFontSize, expandedImageSize), friendsWidget != null ? (kToolbarHeight - 10.0) : max(collapsedFontSize, collapsedImageSize), progress);
  }
}