import 'package:flutter/material.dart';

class OptionAction {
  OptionAction(
      {required this.text, required this.icon, required this.onPressed});

  final String text;
  final Widget icon;
  final VoidCallback? onPressed;
}
