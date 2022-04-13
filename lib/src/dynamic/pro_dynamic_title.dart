import 'package:flutter/material.dart';

import 'package:pro_sliver_app_bar/src/dynamic/pro_dynamic.dart';

class ProDynamicTitle extends ProDynamic {
  
  const ProDynamicTitle({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    throw UnimplementedError();
  }

  @override
  Widget transform(double progress) {
    return ProDynamicTitleWidget(this, progress);
  }
}

class ProDynamicTitleWidget extends StatelessWidget {
  
  const ProDynamicTitleWidget(
    this.data,
    this.progress, { 
    Key? key
  }) : super(key: key);

  final ProDynamicTitle data;
  final double progress;

  @override
  Widget build(BuildContext context) {
    throw UnimplementedError();
  }
}