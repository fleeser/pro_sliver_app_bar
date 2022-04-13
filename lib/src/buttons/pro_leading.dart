import 'package:flutter/material.dart';

import 'package:pro_sliver_app_bar/src/extensions/widget_extension.dart';

class ProLeadingWidget extends StatelessWidget {

  const ProLeadingWidget(
    this.data,
    this.progress, { 
    Key? key
  }) : super(key: key);

  final ProLeading data;
  final double progress;

  @override
  Widget build(BuildContext context) {
    return data.children != null ? Row(
      children: List.generate(data.children!.length, (int index) => Padding(
        padding: EdgeInsets.only(
          left: index == 0 ? data.paddingToStart : data.paddingBetweenChildren
        ),
        child: data.children![index].transform(progress)
      ))
    ) : const SizedBox();
  }
}

class ProLeading extends Widget {
  
  const ProLeading({
    Key? key,
    this.paddingToStart = 12.0,
    this.paddingBetweenChildren = 12.0,
    this.children
  }) : super(key: key);

  final double paddingToStart;
  final double paddingBetweenChildren;
  final List<Widget>? children;

  @override
  Element createElement() {
    throw UnimplementedError();
  }

}