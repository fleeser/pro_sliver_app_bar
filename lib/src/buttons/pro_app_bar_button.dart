import 'package:flutter/material.dart';

class ProAppBarButtonWidget extends StatelessWidget {

  const ProAppBarButtonWidget(
    this.data,
    this.progress, { 
    Key? key
  }) : super(key: key);

  final ProAppBarButton data;
  final double progress;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: data.size.width,
      height: data.size.height,
      child: RawMaterialButton(
        onPressed: data.onPressed,
        fillColor: data.backgroundColor,
        shape: data.shape ?? RoundedRectangleBorder(borderRadius: BorderRadius.circular(data.size.height / 2.0)),
        elevation: 0.0,
        child: data.child
      )
    );
  }
}

class ProAppBarButton extends Widget {

  const ProAppBarButton({
    Key? key,
    this.onPressed,
    this.size = const Size(kToolbarHeight - 10.0, kToolbarHeight - 10.0),
    this.backgroundColor,
    this.shape,
    this.elevation = 0.0,
    this.child
  }) : super(key: key);

  final void Function()? onPressed;
  final Size size;
  final Color? backgroundColor;
  final ShapeBorder? shape;
  final double elevation;
  final Widget? child;

  @override
  Element createElement() {
    throw UnimplementedError();
  }
}