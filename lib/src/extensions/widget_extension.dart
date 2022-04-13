import 'package:flutter/material.dart';

import 'package:pro_sliver_app_bar/src/background/pro_gradient_background.dart';
import 'package:pro_sliver_app_bar/src/background/pro_image_background.dart';

extension WidgetExtension on Widget {
  
  Widget transform(double progress) {
    
    if (this is ProImageBackground) {
      return ProImageBackgroundWidget(this as ProImageBackground, progress);
    }

    if (this is ProGradientBackground) {
      return ProGradientBackgroundWidget(this as ProGradientBackground, progress);
    }

    return this;
  }
}