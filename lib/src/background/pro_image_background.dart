import 'package:flutter/material.dart';

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

class ProImageBackground extends Widget {

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
  Element createElement() {
    throw UnimplementedError();
  }
}