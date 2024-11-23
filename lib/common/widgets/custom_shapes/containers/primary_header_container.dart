import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:flutter_ecommerce_app/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:flutter_ecommerce_app/utils/constants/colors.dart';

class CPrimaryHeaderContainer extends StatelessWidget {
  const CPrimaryHeaderContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return CCurvedEdgesWidget(
      child: Container(
        color: CColors.primary,
        // padding: const EdgeInsets.all(0),
        child: Stack(
          children: [
            Positioned(
              top: -150,
              right: -250,
              child: CCircularContainer(
                  bgColor: CColors.textWhite.withOpacity(0.1)),
            ),
            Positioned(
              top: 100,
              right: -300,
              child: CCircularContainer(
                  bgColor: CColors.textWhite.withOpacity(0.1)),
            ),
            child
            // Column(
            //   children: [
            //     /// AppBar
            //     /// SearchBAr
            //     /// Categories
            //   ],
            // )
          ],
        ),
      ),
    );
  }
}
