import 'dart:math';

import 'package:flutter/material.dart';

import 'package:pro_sliver_app_bar/src/dynamic/dynamic_title/pro_dynamic_title.dart';
import 'package:pro_sliver_app_bar/src/enums/pro_alignment.dart';
import 'package:pro_sliver_app_bar/src/extensions/pro_alignment_extension.dart';
import 'package:pro_sliver_app_bar/src/helpers/calculation_helpers.dart';

class ProDynamicTitleWidget extends StatelessWidget {
  
  const ProDynamicTitleWidget(
    this.data,
    this.progress,
    this.leftAppBarButtonInset, 
    this.rightBarButtonInset, { 
    Key? key
  }) : super(key: key);

  final ProDynamicTitle data;
  final double progress;
  final double leftAppBarButtonInset;
  final double rightBarButtonInset;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: calculateValue(data.expandedPaddingToBottom, (kToolbarHeight - data.collapsedFontSize) / 2.0, progress),
        left: calculateValue(data.expandedPadding, data.expandedPadding + (data.collapsedAlignment == ProAlignment.center ? max(leftAppBarButtonInset, rightBarButtonInset) : leftAppBarButtonInset), progress),
        right: calculateValue(data.expandedPadding, data.expandedPadding + (data.collapsedAlignment == ProAlignment.center ? max(leftAppBarButtonInset, rightBarButtonInset) : rightBarButtonInset), progress),
      ),
      child: Align(
        alignment: calculateAlignment(data.expandedAlignment.alignment, data.collapsedAlignment.alignment, progress),
        child: Text(
          data.title,
          maxLines: 1,
          style: TextStyle(
            fontFamily: data.fontFamily,
            fontSize: calculateValue(data.expandedFontSize, data.collapsedFontSize, progress),
            fontWeight: caluclateFontWeight(data.expandedFontWeight, data.collapsedFontWeight, progress),
            height: 1.0,
            color: calculateColor(data.expandedColor, data.collapsedColor, progress)
          )
        )
      )
    );
  }
}