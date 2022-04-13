import 'package:flutter/material.dart';

import 'package:pro_sliver_app_bar/src/background/pro_gradient_background.dart';
import 'package:pro_sliver_app_bar/src/background/pro_image_background.dart';
import 'package:pro_sliver_app_bar/src/buttons/pro_app_bar_button.dart';
import 'package:pro_sliver_app_bar/src/buttons/pro_leading.dart';
import 'package:pro_sliver_app_bar/src/buttons/pro_trailing.dart';

extension WidgetExtension on Widget {
  
  Widget transform(double progress) {
    
    if (this is ProImageBackground) {
      return ProImageBackgroundWidget(this as ProImageBackground, progress);
    }

    if (this is ProGradientBackground) {
      return ProGradientBackgroundWidget(this as ProGradientBackground, progress);
    }

    if (this is ProLeading) {
      return ProLeadingWidget(this as ProLeading, progress);
    }

    if (this is ProTrailing) {
      return ProTrailingWidget(this as ProTrailing, progress);
    }

    if (this is ProAppBarButton) {
      return ProAppBarButtonWidget(this as ProAppBarButton, progress);
    }

    return this;
  }
}