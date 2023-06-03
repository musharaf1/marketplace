import 'package:flutter/material.dart';

class CarouselIndicator extends StatelessWidget {
  final int currentIndex;
  final int itemCount;

  const CarouselIndicator({
    Key? key,
    required this.currentIndex,
    required this.itemCount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List<Widget>.generate(itemCount, (index) {
          final bool isCurrentIndex = currentIndex == index;
          return Container(
            width: isCurrentIndex ? 15 : 5,
            height: isCurrentIndex ? 4 : 5,
            margin: const EdgeInsets.symmetric(horizontal: 3),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(isCurrentIndex ? 2 : 6),
              color: isCurrentIndex ? Colors.black : Colors.black12,
            ),
          );
        }),
      ),
    );
  }
}
