import 'package:flutter/material.dart';

import 'package:pro_sliver_app_bar/src/extensions/widget_extension.dart';

class ProTrailingWidget extends StatelessWidget {

  const ProTrailingWidget(
    this.data,
    this.progress, { 
    Key? key
  }) : super(key: key);

  final ProTrailing data;
  final double progress;

  @override
  Widget build(BuildContext context) {
    return data.children != null ? Row(
      children: List.generate(data.children!.length, (int index) => Padding(
        padding: EdgeInsets.only(
          right: index == data.children!.length - 1 ? data.paddingToEnd : data.paddingBetweenChildren
        ),
        child: data.children![index].transform(progress)
      ))
    ) : const SizedBox();
  }
}

class ProTrailing extends Widget {
  
  const ProTrailing({
    Key? key,
    this.paddingToEnd = 12.0,
    this.paddingBetweenChildren = 12.0,
    this.children
  }) : super(key: key);

  final double paddingToEnd;
  final double paddingBetweenChildren;
  final List<Widget>? children;

  @override
  Element createElement() {
    throw UnimplementedError();
  }

}