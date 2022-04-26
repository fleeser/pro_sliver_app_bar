import 'package:flutter/material.dart';

import 'package:pro_sliver_app_bar/src/image/pro_future_network_image/pro_future_network_image.dart';
import 'package:pro_sliver_app_bar/src/image/pro_network_image/pro_network_image.dart';

class ProFutureNetworkImageWidget extends StatelessWidget {

  const ProFutureNetworkImageWidget(
    this.data,
    this.progress, { 
    Key? key,
    this.size,
    this.isCircle = false
  }) : super(key: key);

  final ProFutureNetworkImage data;
  final double progress;
  final double? size;
  final bool isCircle;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: data.future,
      builder: (BuildContext context, AsyncSnapshot<String?> snapshot) {
        return Container(
          width: size,
          height: size,
          decoration: BoxDecoration(
            color: data.backgroundColor,
            shape: isCircle ? BoxShape.circle : BoxShape.rectangle
          ),
          alignment: Alignment.center,
          child: snapshot.connectionState == ConnectionState.done
            ? ProNetworkImage(
              url: snapshot.data,
              loadingWidget: data.loadingWidget,
              errorIcon: data.errorIcon,
              noImageIcon: data.noImageIcon,
              iconColor: data.iconColor,
              iconSize: data.iconSize
            ).transform(progress, size: size, isCircle: isCircle)
            : snapshot.hasError
              ? Icon(
                data.errorIcon,
                color: data.iconColor,
                size: data.iconSize
              )
              : data.loadingWidget
        
        );
      }
    );
  }
}