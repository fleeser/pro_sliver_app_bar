import 'package:flutter/material.dart';

import 'package:pro_sliver_app_bar/src/constants.dart';
import 'package:pro_sliver_app_bar/src/dynamic/dynamic_text_field/pro_dynamic_text_field_widget.dart';
import 'package:pro_sliver_app_bar/src/dynamic/pro_dynamic.dart';
import 'package:pro_sliver_app_bar/src/enums/pro_alignment.dart';
import 'package:pro_sliver_app_bar/src/helpers/calculation_helpers.dart';

class ProDynamicTextField extends ProDynamic {
  
  const ProDynamicTextField({ 
    Key? key,
    this.controller,
    this.fontFamily,
    this.expandedAlignment = ProAlignment.left,
    this.collapsedAlignment = ProAlignment.center,
    this.expandedPaddingToBottom = 0.0,
    this.expandedFontWeight = FontWeight.w600,
    this.collapsedFontWeight = FontWeight.w600,
    this.expandedFontSize = kExpandedTitleSize,
    this.collapsedFontSize = kCollapsedTitleSize,
    this.expandedPadding = 12.0,
    this.collapsedPadding = 12.0,
    this.collapsedFontColor,
    this.expandedFontColor,
    this.hintText,
    this.collapsedHintColor,
    this.expandedHintColor,
    this.borderRadius = 0.0,
    this.textAlign = TextAlign.left,
    this.collapsedBackgroundColor,
    this.expandedBackgroundColor
  }) : super(key: key);

  final TextEditingController? controller;
  final String? fontFamily;
  final ProAlignment expandedAlignment;
  final ProAlignment collapsedAlignment;
  final double expandedPaddingToBottom;
  final FontWeight expandedFontWeight;
  final FontWeight collapsedFontWeight;
  final double expandedFontSize;
  final double collapsedFontSize;
  final double expandedPadding;
  final double collapsedPadding;
  final Color? collapsedFontColor;
  final Color? expandedFontColor;
  final Color? collapsedHintColor;
  final Color? expandedHintColor;
  final String? hintText;
  final double borderRadius;
  final TextAlign textAlign;
  final Color? collapsedBackgroundColor;
  final Color? expandedBackgroundColor;

  @override
  Widget build(BuildContext context) {
    throw UnimplementedError();
  }

  @override
  Widget transform(double progress, double leftAppBarButtonInset, double rightBarButtonInset) {
    return ProDynamicTextFieldWidget(this, progress, leftAppBarButtonInset, rightBarButtonInset);
  }

  @override
  double getHeight(double progress) {
    return calculateValue(expandedPaddingToBottom, (kToolbarHeight - collapsedFontSize) / 2.0, progress) + calculateValue(expandedFontSize, collapsedFontSize, progress);
  }
}