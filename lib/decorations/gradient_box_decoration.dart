import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class GradientBoxDecoration extends BoxDecoration
{
  GradientBoxDecoration() {
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: <Color> [
        Colors.black.withAlpha(0),
        Colors.black12,
        Colors.black45
      ]
    );
  }
}