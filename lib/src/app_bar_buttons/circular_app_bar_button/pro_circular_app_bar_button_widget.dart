import 'package:flutter/material.dart';

import 'package:pro_sliver_app_bar/src/app_bar_buttons/circular_app_bar_button/pro_circular_app_bar_button.dart';

class ProCircularAppBarButtonWidget extends StatelessWidget {

  const ProCircularAppBarButtonWidget(
    this.data,
    this.progress, { 
    Key? key
  }) : super(key: key);

  final ProCircularAppBarButton data;
  final double progress;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: kToolbarHeight - 10.0,
      height: kToolbarHeight - 10.0,
      child: RawMaterialButton(
        onPressed: data.onPressed,
        fillColor: data.backgroundColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular((kToolbarHeight - 10.0) / 2.0)),
        elevation: 0.0,
        child: data.child
      )
    );
  }
}