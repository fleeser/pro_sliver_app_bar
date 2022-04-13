import 'package:flutter/material.dart';

import 'package:pro_sliver_app_bar/src/background/gradient_background/gradient_background_widget.dart';
import 'package:pro_sliver_app_bar/src/background/pro_background.dart';

class ProGradientBackground extends ProBackground {
  
  const ProGradientBackground({ 
    Key? key,
    this.gradient,
    this.animateToBackgroundColor = true
  }) : super(key: key);

  final Gradient? gradient;
  final bool animateToBackgroundColor;

  @override
  Widget build(BuildContext context) {
    throw UnimplementedError();
  }

  @override
  Widget transform(double progress) {
    return ProGradientBackgroundWidget(this, progress);
  }
}