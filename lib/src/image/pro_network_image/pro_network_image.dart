import 'package:flutter/material.dart';

import 'package:pro_sliver_app_bar/src/image/pro_image.dart';
import 'package:pro_sliver_app_bar/src/image/pro_network_image/pro_network_image_widget.dart';

class ProNetworkImage extends ProImage {

  const ProNetworkImage({ 
    Key? key,
    this.url,
    this.loadingWidget = const SizedBox(),
    this.errorIcon,
    this.noImageIcon,
    this.iconColor,
    this.iconSize,
    this.backgroundColor
  }) : super(key: key);

  final String? url;
  final Widget loadingWidget;
  final IconData? errorIcon;
  final IconData? noImageIcon;
  final Color? iconColor;
  final double? iconSize;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    throw UnimplementedError();
  }

  @override
  Widget transform(double progress, { double? size, bool isCircle = false }) {
    return ProNetworkImageWidget(this, progress, size: size, isCircle: isCircle);
  }
}