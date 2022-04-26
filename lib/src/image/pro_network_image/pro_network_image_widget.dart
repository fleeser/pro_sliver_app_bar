import 'package:flutter/material.dart';

import 'package:pro_sliver_app_bar/src/image/pro_network_image/pro_network_image.dart';

class ProNetworkImageWidget extends StatelessWidget {

  const ProNetworkImageWidget(
    this.data,
    this.progress, { 
    Key? key,
    this.size,
    this.isCircle = false
  }) : super(key: key);

  final ProNetworkImage data;
  final double progress;
  final double? size;
  final bool isCircle;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: isCircle ? BoxShape.circle : BoxShape.rectangle,
        color: data.backgroundColor 
      ),
      alignment: Alignment.center,
      child: data.url != null ? ClipRRect(
        borderRadius: BorderRadius.circular((size ?? 0.0) / 2.0),
        child: Image.network(
          data.url!,
          loadingBuilder: (BuildContext context, Widget widget, ImageChunkEvent? event) => data.loadingWidget,
          errorBuilder: (BuildContext context, Object e, StackTrace? s) => Icon(
            data.errorIcon,
            color: data.iconColor,
            size: data.iconSize
          ),
          fit: BoxFit.cover
        )
      ) : Icon(
        data.noImageIcon,
        color: data.iconColor,
        size: data.iconSize
      )
    );
  }
}