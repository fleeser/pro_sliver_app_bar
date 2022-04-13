import 'package:flutter/material.dart';

import 'package:pro_sliver_app_bar/pro_sliver_app_bar.dart';

double addAll(List<double> values) {
  double result = 0.0;

  for (double value in values) {
    result += value;
  }

  return result;
}

double sizeOfButtons(List<Widget>? buttons) {
  return addAll(buttons?.map((Widget button) => (button as ProAppBarButton).size.width).toList() ?? <double>[]);
}