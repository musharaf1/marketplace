import 'package:flutter/material.dart';
import 'dart:async';

class ImageCarousel extends StatefulWidget {
  const ImageCarousel({super.key});

  @override
  _ImageCarouselState createState() => _ImageCarouselState();
}

class _ImageCarouselState extends State<ImageCarousel> {
  late PageController _pageController;
  int _currentPage = 0;
  List<String> _images = [
    'assets/images/bg1.jpg',
    'assets/images/bg2.jpg',
  ];
  late Timer _timer;
  int _slideDuration = 3000; // Duration in milliseconds

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _currentPage);
    _startAutoSlide();
  }

  @override
  void dispose() {
    _pageController.dispose();
    _timer.cancel();
    super.dispose();
  }

  void _startAutoSlide() {
    _timer = Timer.periodic(Duration(milliseconds: _slideDuration), (timer) {
      if (_currentPage < _images.length - 1) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }
      _pageController.animateToPage(
        _currentPage,
        duration: Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: _pageController,
      scrollDirection: Axis.horizontal,
      physics: ClampingScrollPhysics(),
      itemCount: _images.length,
      onPageChanged: (int index) {
        setState(() {
          _currentPage = index;
        });
      },
      itemBuilder: (BuildContext context, int index) {
        return Image.asset(
          _images[index],
          fit: BoxFit.cover,
        );
      },
    );
  }
}
