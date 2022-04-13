import 'package:flutter/material.dart';

import 'package:pro_sliver_app_bar/src/app_bar_buttons/circular_app_bar_button/pro_circular_app_bar_button_widget.dart';
import 'package:pro_sliver_app_bar/src/app_bar_buttons/pro_app_bar_button.dart';

class ProCircularAppBarButton extends ProAppBarButton {
  
  const ProCircularAppBarButton({ 
    Key? key,
    this.onPressed,
    this.backgroundColor,
    this.child
  }) : super(key: key);

  final void Function()? onPressed;
  final Color? backgroundColor;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    throw UnimplementedError();
  }

  @override
  Widget transform(double progress) {
    return ProCircularAppBarButtonWidget(this, progress);
  }
}