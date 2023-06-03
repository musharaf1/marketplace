import 'package:flutter/material.dart';

import '../../../utils/utils.dart';

class BuildCarouselIndicator extends StatelessWidget {
  final bool isActive;
  const BuildCarouselIndicator({Key? key, required this.isActive})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 3),
      child: AnimatedContainer(
        height: 5,
        width: isActive ? 10 : 5,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeIn,
        decoration: BoxDecoration(
          color: isActive ? AppColors.kTextColor : AppColors.kCarouselGrey,
          borderRadius: const BorderRadius.all(
            Radius.circular(6),
          ),
        ),
      ),
    );
  }
}
