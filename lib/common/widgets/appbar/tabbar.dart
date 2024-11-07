import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/utils/constants/colors.dart';
import 'package:flutter_ecommerce_app/utils/device/device_utility.dart';
import 'package:flutter_ecommerce_app/utils/helpers/helper_functions.dart';

class CTabbar extends StatelessWidget implements PreferredSizeWidget {
  const CTabbar({super.key, required this.tabs});

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final dark = CHelperFunctions.isDarkMode(context);

    return Material(
      color: dark ? CColors.black : CColors.white,
      child: TabBar(
        tabs: tabs,
        isScrollable: true,
        indicatorColor: CColors.primary,
        unselectedLabelColor: CColors.darkGrey,
        labelColor: CHelperFunctions.isDarkMode(context)
            ? CColors.white
            : CColors.primary,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(CDeviceUtils.getAppBarHeight());
}
