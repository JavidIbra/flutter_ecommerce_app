import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/common/widgets/texts/brand_title_text.dart';
import 'package:flutter_ecommerce_app/utils/constants/colors.dart';
import 'package:flutter_ecommerce_app/utils/constants/enums.dart';
import 'package:flutter_ecommerce_app/utils/constants/sizes.dart';
import 'package:iconsax/iconsax.dart';

class CBrandTitleWithVerifiedIcon extends StatelessWidget {
  const CBrandTitleWithVerifiedIcon({
    super.key,
    required this.title,
    this.maxLines = 1,
    this.textColor,
    this.iconColor = CColors.primary,
    this.textAlign = TextAlign.center,
    this.brandTextSize = TextSizes.small,
  });

  final String title;
  final int maxLines;
  final Color? textColor, iconColor;
  final TextAlign textAlign;
  final TextSizes brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: CBrandTitleText(
            // overflow: TextOverflow.ellipsis,
            title: title,
            color: textColor,
            textAlign: textAlign,
            maxLines: maxLines,
            brandTextSize: brandTextSize,
          ),
        ),
        const SizedBox(width: CSizes.xs),
        Icon(
          Iconsax.verify5,
          color: iconColor,
          size: CSizes.iconXs,
        ),
      ],
    );
  }
}
