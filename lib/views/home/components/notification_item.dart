import 'package:flutter/material.dart';
import 'package:translationtestmoniepoint/utils/app_colors.dart';

import '../../widgets/app_text.dart';

class NotificationItem extends StatelessWidget {
  final IconData icon;
  final String value;
  const NotificationItem({Key? key, required this.icon, required this.value})
      : super(key: key);

  final double radius = 3.0;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Icon(
          icon,
          color: AppColors.kTextColor,
          size: 27,
        ),
        Positioned(
          right: 3,
          top: 1,
          child: Container(
            alignment: Alignment.center,
            height: 15,
            width: 15,
            decoration: BoxDecoration(
              color: AppColors.kRed,
              borderRadius: BorderRadius.all(
                Radius.circular(radius),
              ),
            ),
            child: Center(
              child: AppText.caption(
                value,
                color: Colors.white,
              ),
            ),
          ),
        )
      ],
    );
  }
}
