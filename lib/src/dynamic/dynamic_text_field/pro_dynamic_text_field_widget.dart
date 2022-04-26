import 'dart:math';

import 'package:flutter/material.dart';

import 'package:pro_sliver_app_bar/src/dynamic/dynamic_text_field/pro_dynamic_text_field.dart';
import 'package:pro_sliver_app_bar/src/enums/pro_alignment.dart';
import 'package:pro_sliver_app_bar/src/extensions/pro_alignment_extension.dart';
import 'package:pro_sliver_app_bar/src/helpers/calculation_helpers.dart';

class ProDynamicTextFieldWidget extends StatelessWidget {
  
  const ProDynamicTextFieldWidget(
    this.data,
    this.progress,
    this.leftAppBarButtonInset, 
    this.rightBarButtonInset, { 
    Key? key
  }) : super(key: key);

  final ProDynamicTextField data;
  final double progress;
  final double leftAppBarButtonInset;
  final double rightBarButtonInset;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: calculateValue(data.expandedPaddingToBottom, (kToolbarHeight - data.collapsedFontSize) / 2.0, progress),
        left: calculateValue(data.expandedPadding, data.collapsedPadding + (data.collapsedAlignment == ProAlignment.center ? max(leftAppBarButtonInset, rightBarButtonInset) : leftAppBarButtonInset), progress),
        right: calculateValue(data.expandedPadding, data.collapsedPadding + (data.collapsedAlignment == ProAlignment.center ? max(leftAppBarButtonInset, rightBarButtonInset) : rightBarButtonInset), progress),
      ),
      child: Align(
        alignment: calculateAlignment(data.expandedAlignment.alignment, data.collapsedAlignment.alignment, progress),
        child: SizedBox(
          height: calculateValue(data.expandedFontSize, data.collapsedFontSize, progress),
          child: TextField(
            textAlign: data.textAlign, // TODO: Calculate method
            autocorrect: false,
            keyboardType: TextInputType.text,
            controller: data.controller,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.zero,
              enabledBorder: const OutlineInputBorder(borderSide: BorderSide.none),
              focusedBorder: const OutlineInputBorder(borderSide: BorderSide.none),
              border: const OutlineInputBorder(borderSide: BorderSide.none),
              hintText: data.hintText,
              hintStyle: TextStyle(
                fontFamily: data.fontFamily,
                fontWeight: caluclateFontWeight(data.expandedFontWeight, data.collapsedFontWeight, progress),
                fontSize: calculateValue(data.expandedFontSize, data.collapsedFontSize, progress),
                color: calculateColor(data.expandedHintColor, data.collapsedHintColor, progress),
                height: 1.0
              )
            ),
            style: TextStyle(
              fontWeight: caluclateFontWeight(data.expandedFontWeight, data.collapsedFontWeight, progress),
              fontSize: calculateValue(data.expandedFontSize, data.collapsedFontSize, progress),
              color: calculateColor(data.expandedFontColor, data.collapsedFontColor, progress),
              height: 1.0
            )
          )
        )
      )
    );
  }
}