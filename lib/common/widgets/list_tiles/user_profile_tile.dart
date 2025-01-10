import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/common/widgets/images/circular_image.dart';
import 'package:flutter_ecommerce_app/utils/constants/colors.dart';
import 'package:flutter_ecommerce_app/utils/constants/image_strings.dart';
import 'package:iconsax/iconsax.dart';

class CUserProfileTile extends StatelessWidget {
  const CUserProfileTile({
    super.key,
    required this.onPressed,
  });

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CCircularImage(
        image: CImages.user,
        width: 50,
        height: 50,
        padding: 0,
      ),
      title: Text(
        "Coding with C",
        style: Theme.of(context)
            .textTheme
            .headlineSmall!
            .apply(color: Colors.white),
      ),
      subtitle: Text(
        "mr_javid95@mail.ru",
        style:
            Theme.of(context).textTheme.bodyMedium!.apply(color: Colors.white),
      ),
      trailing: IconButton(
          onPressed: onPressed,
          icon: const Icon(
            Iconsax.edit,
            color: CColors.white,
          )),
    );
  }
}
