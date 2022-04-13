import 'package:flutter/material.dart';

abstract class ProBackground extends StatelessWidget {

  const ProBackground({ Key? key }) : super(key: key);

  Widget transform(double progress);
}