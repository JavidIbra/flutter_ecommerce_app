import 'package:flutter/material.dart';

class CBrandTitleText extends StatelessWidget {
  const CBrandTitleText({
    super.key,
    this.color,
    required this.title,
    required this.maxlines,
    required this.textAlign,
    required int maxLines,
  });

  final Color? color;
  final String title;
  final int maxlines;
  final TextAlign textAlign;

  @override
  Widget build(BuildContext context) {
    return const Text('ok');
  }
}
