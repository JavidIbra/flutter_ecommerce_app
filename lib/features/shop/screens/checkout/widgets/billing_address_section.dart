import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/common/widgets/texts/section_heading.dart';
import 'package:flutter_ecommerce_app/utils/constants/sizes.dart';

class CBillingAdressSection extends StatelessWidget {
  const CBillingAdressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CSectionHeading(
          title: 'Shipping Address',
          buttonTitle: 'Change',
          onPressed: () {},
        ),
        Text('Baku', style: Theme.of(context).textTheme.bodyLarge),
        const SizedBox(height: CSizes.spaceBtwItems / 2),
        Row(
          children: [
            const Icon(
              Icons.phone,
              color: Colors.grey,
              size: 16,
            ),
            const SizedBox(width: CSizes.spaceBtwItems),
            Text('+994556667788',
                style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        const SizedBox(height: CSizes.spaceBtwItems / 2),
        Row(
          children: [
            const Icon(
              Icons.location_history,
              color: Colors.grey,
              size: 16,
            ),
            const SizedBox(width: CSizes.spaceBtwItems),
            Expanded(
              child: Text(
                'Xəqani Musayev 56 Baku',
                style: Theme.of(context).textTheme.bodyMedium,
                softWrap: true,
              ),
            ),
          ],
        ),
        const SizedBox(height: CSizes.spaceBtwItems / 2),
      ],
    );
  }
}
