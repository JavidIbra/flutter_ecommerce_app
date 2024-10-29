import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/utils/constants/colors.dart';
import 'package:flutter_ecommerce_app/utils/constants/sizes.dart';

class CRoundedContainer extends StatelessWidget {
  const CRoundedContainer(
      {super.key,
      this.child,
      this.height,
      this.radius = CSizes.cardRadiusLg,
      this.width,
      this.showBorder = false,
      this.borderColor = CColors.borderPrimary,
      this.backgroundColor = CColors.white,
      this.padding,
      this.margin});

  final Widget? child;
  final double? height;
  final double radius;
  final double? width;
  final bool showBorder;
  final Color borderColor;
  final Color backgroundColor;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(radius),
        border: showBorder ? Border.all(color: borderColor) : null,
      ),
      child: child,
    );
  }
}
