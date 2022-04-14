import 'package:flutter/material.dart';

abstract class ProDynamic extends StatelessWidget {

  const ProDynamic({ Key? key }) : super(key: key);

  Widget transform(double progress, double leftAppBarButtonInset, double rightBarButtonInset);

  double getHeight(double progress);
}