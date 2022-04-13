import 'package:flutter/material.dart';

import 'package:pro_sliver_app_bar/src/background/image_background/pro_image_background_widget.dart';
import 'package:pro_sliver_app_bar/src/background/pro_background.dart';

class ProImageBackground extends ProBackground {
  
  const ProImageBackground({ 
    Key? key,
    this.image,
    this.fit = BoxFit.cover,
    this.animateToBackgroundColor = true
  }) : super(key: key);

  final ImageProvider? image;
  final BoxFit fit;
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