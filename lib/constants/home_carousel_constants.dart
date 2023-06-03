import 'package:flutter/material.dart';
import 'package:translationtestmoniepoint/utils/app_colors.dart';

import '../models/carousel_options.dart';

final List<CarouselOption> carouselOptions = [
  CarouselOption(
    title: "#FASHION DAY",
    description: "80% OFF",
    subtitle: "Discover fashion that suits\nto your style",
    backgroundImage:
        'https://img.freepik.com/free-photo/clothing-rack-with-floral-hawaiian-shirts-hangers-hat_23-2149366018.jpg?w=2000&t=st=1685804505~exp=1685805105~hmac=4499bf89020e377f7fc70d5b766c89c166acb982fe9cb79c8014c9cd3e83858a',
    backgroundColor: AppColors.kCarouselGrey,
  ),
  CarouselOption(
      title: "#BEAUTYSALE",
      description: "DISCOVER OUR\nBEAUTY SELECTION",
      backgroundColor: Colors.brown.shade600,
      backgroundImage:
          "https://img.freepik.com/free-photo/shirt-mockup-concept-with-plain-clothing_23-2149448749.jpg?w=2000&t=st=1685804890~exp=1685805490~hmac=fba4bb2306fbb4f62d36ed8679e3be09d0b0f372463adccdbf29e2db95a8d13f"),
  CarouselOption(
    title: "#FASHION DAY",
    description: "80% OFF",
    subtitle: "Discover fashion that suits\nto your style",
    backgroundImage:
        "https://img.freepik.com/free-photo/clothing-rack-with-hawaiian-shirts-with-floral-print_23-2149366012.jpg?w=2000&t=st=1685805025~exp=1685805625~hmac=47478fb762783cf559f6ecf1b6e7c3c3ee3149643e285e35d403e84b2f459077",
    backgroundColor: AppColors.kCarouselGrey,
  ),
];
