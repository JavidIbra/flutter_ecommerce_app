import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/utils/constants/colors.dart';
import 'package:flutter_ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter_ecommerce_app/utils/constants/text_string.dart';
import 'package:flutter_ecommerce_app/utils/helpers/helper_functions.dart';

class CTermsAndConditionsCheckBox extends StatelessWidget {
  const CTermsAndConditionsCheckBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = CHelperFunctions.isDarkMode(context);
    return Row(
      children: [
        SizedBox(
          width: 24,
          height: 24,
          child: Checkbox(
            value: true,
            onChanged: (value) {},
          ),
        ),
        const SizedBox(width: CSizes.spaceBtwItems),
        Text.rich(
          TextSpan(children: [
            TextSpan(
                text: CTexts.iAgreeTo,
                style: Theme.of(context).textTheme.bodySmall),
            TextSpan(
              text: CTexts.privacyPolicy,
              style: Theme.of(context).textTheme.bodyMedium!.apply(
                    color: dark ? CColors.white : CColors.primary,
                    decoration: TextDecoration.underline,
                    decorationColor: dark ? CColors.white : CColors.primary,
                  ),
            ),
            TextSpan(
                text: CTexts.and, style: Theme.of(context).textTheme.bodySmall),
            TextSpan(
              text: CTexts.termsOfUse,
              style: Theme.of(context).textTheme.bodyMedium!.apply(
                    color: dark ? CColors.white : CColors.primary,
                    decoration: TextDecoration.underline,
                    decorationColor: dark ? CColors.white : CColors.primary,
                  ),
            ),
          ]),
        ),
      ],
    );
  }
}
