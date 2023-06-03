import 'package:flutter/material.dart';
import 'package:translationtestmoniepoint/utils/app_colors.dart';

class QuickLinkIcon extends StatelessWidget {
  final IconData icon;
  final String label;

  const QuickLinkIcon({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(
            color: Colors.grey[200], // Customize the background color
            borderRadius: BorderRadius.circular(5), // Apply border radius
          ),
          child: Center(
            child: IconButton(
              icon: Icon(
                icon,
                color: Colors.black45, // Customize the icon color
                size: 16, // Adjust the icon size if needed
              ),
              onPressed: () {
                // Implement quick link functionality
              },
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          label,
          style: const TextStyle(
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}
