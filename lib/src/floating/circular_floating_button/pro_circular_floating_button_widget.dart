import 'package:flutter/material.dart';

import 'package:pro_sliver_app_bar/src/floating/circular_floating_button/pro_circular_floating_button.dart';

class ProCircularFloatingButtonWidget extends StatelessWidget {

  const ProCircularFloatingButtonWidget(
    this.data,
    this.progress, { 
    Key? key
  }) : super(key: key);

  final ProCircularFloatingButton data;
  final double progress;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: data.size,
      height: data.size,
      child: RawMaterialButton(
        onPressed: data.onPressed,
        fillColor: data.backgroundColor,
        elevation: data.elevation,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(data.size / 2.0)),
      )
    );
  }
}