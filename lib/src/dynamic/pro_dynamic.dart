import 'package:flutter/material.dart';

abstract class ProDynamic extends StatelessWidget {

  const ProDynamic({ 
    Key? key,
    required this.bottomPadding
  }) : super(key: key);

  final double bottomPadding;

  Widget transform(double progress, double leftAppBarButtonInset, double rightBarButtonInset);

  double getHeight(double progress);
}