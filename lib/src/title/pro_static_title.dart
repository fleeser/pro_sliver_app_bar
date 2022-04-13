import 'package:flutter/material.dart';

class ProStaticTitleWidget extends StatelessWidget {

  const ProStaticTitleWidget(
    this.data,
    this.progress, { 
    Key? key
  }) : super(key: key);

  final ProStaticTitle data;
  final double progress;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: data.padding),
      child: Text(
        data.title,
        maxLines: 1,
        textAlign: data.textAlign,
        style: data.style
      )
    );
  }
}

class ProStaticTitle extends Widget {

  const ProStaticTitle({
    Key? key,
    required this.title,
    this.textAlign = TextAlign.left,
    this.style = const TextStyle(fontSize: kToolbarHeight - 32.0, fontWeight: FontWeight.w600, height: 1.0, color: Colors.black),
    this.padding = 12.0
  }) : super(key: key);

  final String title;
  final TextAlign textAlign;
  final TextStyle? style;
  final double padding;

  @override
  Element createElement() {
    throw UnimplementedError();
  }
}