import 'package:flutter/material.dart';

import 'package:pro_sliver_app_bar/src/background/image_background/pro_image_background.dart';

class ProImageBackgroundWidget extends StatelessWidget {

  const ProImageBackgroundWidget(
    this.data,
    this.progress, { 
    Key? key
  }) : super(key: key);

  final ProImageBackground data;
  final double progress;

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: data.animateToBackgroundColor ? 1.0 - progress : 1.0,
      child: Container(
        decoration: BoxDecoration(
          image: data.image != null ? DecorationImage(
            image: data.image!,
            fit: data.fit
          ) : null
        )
      )
    );
  }
}