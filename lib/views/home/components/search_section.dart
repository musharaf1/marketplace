import 'package:flutter/material.dart';
import 'package:translationtestmoniepoint/utils/app_colors.dart';
import 'package:translationtestmoniepoint/utils/app_text_styles.dart';
import 'package:translationtestmoniepoint/views/home/components/notification_item.dart';

class SearchSection extends StatelessWidget {
  const SearchSection({Key? key}) : super(key: key);
  final double border = 6;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Row(
        children: [
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(
                right: 10,
              ),
              decoration: BoxDecoration(
                border: Border.all(color: AppColors.kTextColor),
                borderRadius: BorderRadius.all(
                  Radius.circular(border),
                ),
              ),
              height: 55,
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search),
                  hintText: "Search",
                  hintStyle: bodyStyle,
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          const NotificationItem(icon: Icons.shopping_bag_outlined, value: '1'),
          const SizedBox(
            width: 10,
          ),
          const NotificationItem(icon: Icons.mail_outline, value: '9+'),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }
}
