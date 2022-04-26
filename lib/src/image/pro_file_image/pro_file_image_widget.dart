import 'package:flutter/material.dart';

import 'package:pro_sliver_app_bar/src/image/pro_file_image/pro_file_image.dart';

class ProFileImageWidget extends StatelessWidget {

  const ProFileImageWidget(
    this.data,
    this.progress, { 
    Key? key
  }) : super(key: key);

  final ProFileImage data;
  final double progress;

  @override
  Widget build(BuildContext context) {
    return data.file != null
      ? Image.file(
        data.file!,
        errorBuilder: (BuildContext context, Object e, StackTrace? s) => Icon(
          data.errorIcon,
          color: data.iconColor,
          size: data.iconSize
        ),
        fit: BoxFit.cover,
        width: double.infinity,
        height: double.infinity
      )
      : Icon(
        data.noImageIcon,
        color: data.iconColor,
        size: data.iconSize
      );
  }
}