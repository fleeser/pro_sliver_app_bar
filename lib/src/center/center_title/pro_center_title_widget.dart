import 'package:flutter/material.dart';

import 'package:pro_sliver_app_bar/src/center/center_title/pro_center_title.dart';

class ProCenterTitleWidget extends StatelessWidget {
  
  const ProCenterTitleWidget(
    this.data,
    this.progress, { 
    Key? key
  }) : super(key: key);

  final ProCenterTitle data;
  final double progress;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: data.padding),
      child: Text(
        data.title,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        textAlign: data.textAlign,
        style: TextStyle(
          fontSize: kToolbarHeight - 32.0,
          fontWeight: FontWeight.w600,
          color: data.color,
          height: 1.0
        )
      )
    );
  }
}