import 'package:flutter/material.dart';
import 'package:translationtestmoniepoint/views/home/components/build_carousel_indicator.dart';
import 'package:translationtestmoniepoint/views/widgets/app_text.dart';

import '../../../constants/home_carousel_constants.dart';

class HomeCarousel extends StatelessWidget {
  final int index;
  final int currentIndex;
  const HomeCarousel(
      {Key? key, required this.index, required this.currentIndex})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Image.network(
            fit: BoxFit.cover,
            carouselOptions[index].backgroundImage,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppText.body(
                  carouselOptions[index].title,
                ),
                Row(children: [
                  ...List.generate(
                      1,
                      (index) => BuildCarouselIndicator(
                          isActive: currentIndex == index))
                ]),
              ],
            ),
            AppText.heading3(carouselOptions[index].description),
            carouselOptions[index].subtitle != null
                ? AppText.caption(carouselOptions[index].subtitle!)
                : const SizedBox.shrink(),
            const SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                padding: const EdgeInsets.only(
                  left: 18,
                  right: 18,
                  top: 13,
                  bottom: 13,
                ),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(6)),
                  color: Colors.black.withOpacity(.5),
                ),
                child: AppText.body("Check this Out"),
              ),
            )
          ],
        ),
      ],
    );
  }
}
