import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:flutter_ecommerce_app/utils/constants/colors.dart';
import 'package:flutter_ecommerce_app/utils/constants/sizes.dart';

class CCouponCode extends StatelessWidget {
  const CCouponCode({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return CRoundedContainer(
      showBorder: true,
      backgroundColor: dark ? CColors.dark : CColors.white,
      padding: const EdgeInsets.only(
          top: CSizes.sm, bottom: CSizes.sm, right: CSizes.sm, left: CSizes.md),
      child: Row(
        children: [
          /// Text fields
          Flexible(
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: 'Have a promo code? Enter here',
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
              ),
            ),
          ),

          /// Button
          SizedBox(
            width: 80,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  foregroundColor: dark
                      ? CColors.white.withOpacity(0.5)
                      : CColors.dark.withOpacity(0.5),
                  backgroundColor: Colors.grey.withOpacity(0.2),
                  side: BorderSide(color: Colors.grey.withOpacity(0.1))),
              child: const Text("Apply"),
            ),
          )
        ],
      ),
    );
  }
}
