import 'package:flutter/material.dart';

import 'package:pro_sliver_app_bar/src/background/pro_image_background.dart';

extension WidgetExtension on Widget {
  
  Widget transform(double progress) {
    if (this is ProImageBackground) {
      return ProImageBackgroundWidget(this as ProImageBackground, progress);
    }

    return this;
  }
}