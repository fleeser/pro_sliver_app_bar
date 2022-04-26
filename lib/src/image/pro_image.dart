import 'package:flutter/material.dart';

abstract class ProImage extends StatelessWidget {

  const ProImage({ Key? key }) : super(key: key);

  Widget transform(double progress, { double? size, bool isCircle = false });
}