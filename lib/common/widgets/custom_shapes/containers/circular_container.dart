import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/utils/constants/colors.dart';

class CCircularContainer extends StatelessWidget {
  const CCircularContainer({
    super.key,
    this.width = 400,
    this.heights = 400,
    this.radius = 400,
    this.padding = 0,
    this.child,
    this.bgColor = CColors.white,
    this.margin,
  });

  final double? width;
  final double? heights;
  final double radius;
  final double padding;
  final EdgeInsets? margin;
  final Widget? child;
  final Color bgColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      margin: margin,
      height: heights,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: CColors.textWhite.withOpacity(0.1),
      ),
      child: child,
    );
  }
}
