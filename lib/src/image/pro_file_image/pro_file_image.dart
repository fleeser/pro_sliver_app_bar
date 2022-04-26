import 'dart:io';

import 'package:flutter/material.dart';

import 'package:pro_sliver_app_bar/src/image/pro_image.dart';
import 'package:pro_sliver_app_bar/src/image/pro_file_image/pro_file_image_widget.dart';

class ProFileImage extends ProImage {

  const ProFileImage({ 
    Key? key,
    this.file,
    this.errorIcon,
    this.noImageIcon,
    this.iconColor,
    this.iconSize
  }) : super(key: key);

  final File? file;
  final IconData? errorIcon;
  final IconData? noImageIcon;
  final Color? iconColor;
  final double? iconSize;

  @override
  Widget build(BuildContext context) {
    throw UnimplementedError();
  }

  @override
  Widget transform(double progress, { double? size, bool isCircle = false }) {
    return ProFileImageWidget(this, progress);
  }
}