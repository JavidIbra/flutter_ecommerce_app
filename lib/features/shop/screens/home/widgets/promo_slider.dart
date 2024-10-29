import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:flutter_ecommerce_app/common/widgets/images/rounded_images.dart';
import 'package:flutter_ecommerce_app/utils/constants/colors.dart';
import 'package:flutter_ecommerce_app/utils/constants/image_strings.dart';
import 'package:flutter_ecommerce_app/utils/constants/sizes.dart';
import 'package:get/get.dart';

import '../../../controllers/home_controller.dart';

class CPromoSlider extends StatelessWidget {
  const CPromoSlider({
    super.key,
    required this.banners,
  });

  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());

    return Column(
      children: [
        CarouselSlider(
          items: banners
              .map((url) => CRoundedImage(
                    imageUrl: url,
                  ))
              .toList(),
          options: CarouselOptions(
              viewportFraction: 1,
              onPageChanged: (index, _) =>
                  controller.updatePageIndicator(index)),
        ),
        const SizedBox(height: CSizes.spaceBtwItems),
        Center(
          child: Obx(
            () => Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                for (int i = 0; i < banners.length; i++)
                  CCircularContainer(
                    width: 20,
                    heights: 4,
                    margin: const EdgeInsets.only(right: 10),
                    bgColor: controller.carouselCurrentIndex.value == i
                        ? CColors.primary
                        : CColors.grey,
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
