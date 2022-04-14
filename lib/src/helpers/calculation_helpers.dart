import 'dart:ui';

import 'package:flutter/material.dart';

double calculateValue(double expanded, double collapsed, double progress) {
  if (expanded == collapsed) return expanded;
  return lerpDouble(expanded, collapsed, progress)!;
}

Color? calculateColor(Color? expanded, Color? collapsed, double progress) {
  if (expanded == collapsed) return expanded;
  return Color.lerp(expanded, collapsed, progress)!;
}

Alignment calculateAlignment(Alignment expanded, Alignment collapsed, double progress) {
  if (expanded == collapsed) return expanded;
  return Alignment.lerp(expanded, collapsed, progress)!;
}

FontWeight caluclateFontWeight(FontWeight expanded, FontWeight collapsed, double progress) {

  if (expanded.index == collapsed.index) return expanded;

  bool getsSmaller = expanded.index - collapsed.index > 0;

  int howManySteps = (expanded.index - collapsed.index).abs();
  
  double partSize = 1.0 / (howManySteps + 1);

  // TODO

  return FontWeight.w500;
}