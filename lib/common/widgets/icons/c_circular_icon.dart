import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/utils/constants/colors.dart';
import 'package:flutter_ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter_ecommerce_app/utils/helpers/helper_functions.dart';

class CCircularIcon extends StatelessWidget {
  const CCircularIcon({
    super.key,
    this.width,
    this.height,
    this.size = CSizes.lg,
    required this.icon,
    this.color,
    this.backgroundColor,
    this.onPressed,
  });

  final double? width, height, size;
  final IconData icon;
  final Color? color;
  final Color? backgroundColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: backgroundColor != null
            ? backgroundColor!
            : CHelperFunctions.isDarkMode(context)
                ? CColors.black.withOpacity(0.9)
                : CColors.white.withOpacity(0.9),
      ),
      child: IconButton(
        onPressed: () {},
        icon: Icon(
          icon,
          color: color,
          size: size,
        ),
      ),
    );
  }
}
