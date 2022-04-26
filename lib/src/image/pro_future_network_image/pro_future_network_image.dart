import 'package:flutter/material.dart';

import 'package:pro_sliver_app_bar/src/image/pro_future_network_image/pro_future_network_image_widget.dart';
import 'package:pro_sliver_app_bar/src/image/pro_image.dart';

class ProFutureNetworkImage extends ProImage {

  const ProFutureNetworkImage({ 
    Key? key,
    required this.future,
    this.loadingWidget = const SizedBox(),
    this.errorIcon,
    this.noImageIcon,
    this.iconColor,
    this.iconSize,
    this.backgroundColor
  }) : super(key: key);

  final Future<String?> future;
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
    return ProFutureNetworkImageWidget(this, progress, size: size, isCircle: isCircle);
  }
}