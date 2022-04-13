import 'package:flutter/material.dart';

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

class ProGradientBackground extends Widget {

  const ProGradientBackground({
    Key? key,
    this.gradient,
    this.animateToBackgroundColor = true
  }) : super(key: key);

  final Gradient? gradient;
  final bool animateToBackgroundColor;

  @override
  Element createElement() {
    throw UnimplementedError();
  }
}