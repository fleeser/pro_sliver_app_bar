import 'package:flutter/material.dart';

import 'package:pro_sliver_app_bar/src/enums/pro_alignment.dart';

extension ProAlignmentExtension on ProAlignment {
  Alignment get alignment {
    switch (this) {
      case ProAlignment.left: return Alignment.centerLeft;
      case ProAlignment.center: return Alignment.center;
      case ProAlignment.right: return Alignment.centerRight;
    }
  }

  TextAlign get textAlign {
    switch (this) {
      case ProAlignment.left: return TextAlign.left;
      case ProAlignment.center: return TextAlign.center;
      case ProAlignment.right: return TextAlign.right;
    }
  }
}