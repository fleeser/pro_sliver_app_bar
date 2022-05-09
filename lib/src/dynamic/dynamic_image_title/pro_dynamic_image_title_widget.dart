import 'dart:math';

import 'package:flutter/material.dart';

import 'package:pro_sliver_app_bar/src/dynamic/dynamic_image_title/pro_dynamic_image_title.dart';
import 'package:pro_sliver_app_bar/src/enums/pro_alignment.dart';
import 'package:pro_sliver_app_bar/src/extensions/pro_alignment_extension.dart';
import 'package:pro_sliver_app_bar/src/helpers/calculation_helpers.dart';

class ProDynamicImageTitleWidget extends StatelessWidget {
  
  const ProDynamicImageTitleWidget(
    this.data,
    this.progress,
    this.leftAppBarButtonInset, 
    this.rightBarButtonInset, { 
    Key? key
  }) : super(key: key);

  final ProDynamicImageTitle data;
  final double progress;
  final double leftAppBarButtonInset;
  final double rightBarButtonInset;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: calculateValue(data.friendsWidget != null ? 24.0 - ((kToolbarHeight - 10.0) - data.expandedFontSize) / 2.0 : data.expandedPaddingToBottom, data.friendsWidget != null ? 5.0 : (kToolbarHeight - max(data.collapsedFontSize, data.collapsedImageSize)) / 2.0, progress),
        left: calculateValue(data.expandedPadding, data.collapsedPadding + (data.collapsedAlignment == ProAlignment.center ? max(leftAppBarButtonInset, rightBarButtonInset) : leftAppBarButtonInset), progress),
        right: calculateValue(data.expandedPadding, data.collapsedPadding + (data.collapsedAlignment == ProAlignment.center ? max(leftAppBarButtonInset, rightBarButtonInset) : leftAppBarButtonInset), progress)
      ),
      child: Align(
        alignment: calculateAlignment(data.expandedAlignment.alignment, data.collapsedAlignment.alignment, progress),
        child: Row(
          children: [
            if (!data.showImageOnlyWhenCollapsed || progress == 1.0) data.image.transform(progress, size: calculateValue(data.expandedImageSize, data.collapsedImageSize, progress), isCircle: true),
            SizedBox(width: data.showImageOnlyWhenCollapsed ? progress == 1.0 ? data.paddingBetweenImageAndTitle : calculateValue(0.0, data.collapsedImageSize + data.paddingBetweenImageAndTitle, progress) : data.paddingBetweenImageAndTitle),
            Expanded(
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
            ),
            if (data.friendsWidget != null) const SizedBox(width: 24.0),
            if (data.friendsWidget != null) data.friendsWidget!
          ]
        )
      )
    );
  }
}