import 'package:flutter/material.dart';

abstract class ProCenter extends StatelessWidget {

  const ProCenter({ 
    Key? key,
    required this.centered
  }) : super(key: key);

  final bool centered;

  Widget transform(double progress);
}