import 'package:flutter/material.dart';

import 'package:pro_sliver_app_bar/src/floating/circular_floating_button/pro_circular_floating_button_widget.dart';
import 'package:pro_sliver_app_bar/src/floating/pro_floating.dart';

class ProCircularFloatingButton extends ProFloating {

  const ProCircularFloatingButton({ 
    Key? key,
    this.onPressed,
    this.size = 58.0,
    this.backgroundColor,
    this.elevation = 2.0
  }) : super(
    key: key,
    sizee: size
  );

  final void Function()? onPressed;
  final double size;
  final Color? backgroundColor;
  final double elevation;

  @override
  Widget build(BuildContext context) {
    throw UnimplementedError();
  }

  @override
  Widget transform(double progress) {
    return ProCircularFloatingButtonWidget(this, progress);
  }
}