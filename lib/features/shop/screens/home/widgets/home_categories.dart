import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/common/widgets/image_text_widgets/vertical_image_text.dart';
import 'package:flutter_ecommerce_app/utils/constants/image_strings.dart';

class CHomeCategories extends StatelessWidget {
  const CHomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return CVerticalImageText(
            image: CImages.facebook,
            title: "Shoes",
            onTap: () {},
          );
        },
      ),
    );
  }
}
