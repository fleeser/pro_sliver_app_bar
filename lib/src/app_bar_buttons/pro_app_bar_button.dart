import 'package:flutter/material.dart';

abstract class ProAppBarButton extends StatelessWidget {

  const ProAppBarButton({ Key? key }) : super(key: key);

  Widget transform(double progress);
}