import 'package:flutter/material.dart';

import 'package:pro_sliver_app_bar/src/background/image_background/pro_image_background_widget.dart';
import 'package:pro_sliver_app_bar/src/background/pro_background.dart';
import 'package:pro_sliver_app_bar/src/image/pro_image.dart';

class ProImageBackground extends ProBackground {
  
  const ProImageBackground({ 
    Key? key,
    required this.image,
    this.backgroundColor,
    this.animateToBackgroundColor = true
  }) : super(key: key);

  final ProImage image;
  final Color? backgroundColor;
  final bool animateToBackgroundColor;

  @override
  Widget build(BuildContext context) {
    throw UnimplementedError();
  }

  @override
  Widget transform(double progress) {
    return ProImageBackgroundWidget(this, progress);
  }
}