// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CarouselOption {
  final String title;
  final String description;
  final String? subtitle;
  final Color backgroundColor;
  final String backgroundImage;
  CarouselOption({
    required this.title,
    required this.description,
    this.subtitle,
    required this.backgroundImage,
    required this.backgroundColor,
  });
}
