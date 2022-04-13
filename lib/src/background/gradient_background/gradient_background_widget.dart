import 'package:flutter/material.dart';

import 'package:pro_sliver_app_bar/src/background/gradient_background/pro_gradient_background.dart';

class ProGradientBackgroundWidget extends StatelessWidget {
  
  const ProGradientBackgroundWidget(
    this.data,
    this.progress, { 
    Key? key
  }) : super(key: key);

  final ProGradientBackground data;
  final double progress;

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: data.animateToBackgroundColor ? 1.0 - progress : 1.0,
      child: Container(
        decoration: BoxDecoration(
          gradient: data.gradient
        )
      )
    );
  }
}