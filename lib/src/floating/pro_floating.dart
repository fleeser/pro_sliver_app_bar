import 'package:flutter/material.dart';

abstract class ProFloating extends StatelessWidget {

  const ProFloating({ 
    Key? key,
    required this.sizee
  }) : super(key: key);

  final double sizee;

  Widget transform(double progress);
}