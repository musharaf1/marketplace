import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:translationtestmoniepoint/utils/utils.dart';
import 'package:translationtestmoniepoint/views/displaydetails/details.dart';
import 'package:translationtestmoniepoint/views/widgets/app_text.dart';
import 'package:translationtestmoniepoint/views/widgets/carousel_indicator.dart';
import 'package:translationtestmoniepoint/views/widgets/custom_grid_view.dart';
import 'package:translationtestmoniepoint/views/widgets/custom_icon.dart';
import 'package:translationtestmoniepoint/views/widgets/quick_links.dart';
import 'package:translationtestmoniepoint/views/widgets/search_input_field.dart';

import '../../constants/home_carousel_constants.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  bool _showFlexibleSpace = true;
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_handleScroll);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _handleScroll() {
    setState(() {
      _showFlexibleSpace = _scrollController.offset <= 150;
    });
  }

  @override
  Widget build(BuildContext context) {
    return NotificationListener<ScrollNotification>(
      onNotification: (notification) {
        if (notification is ScrollUpdateNotification) {
          _handleScroll();
        }
        return false;
      },
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: _showFlexibleSpace
              ? const Size.fromHeight(350)
              : const Size(0, 80),
          child: AppBar(
            title: const SearchInputField(),
            backgroundColor: Colors.transparent,
            elevation: 0,
            flexibleSpace: _showFlexibleSpace
                ? SizedBox(
                    height: 400,
                    child: Stack(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: 300,
                          child: CarouselSlider(
                            items: carouselOptions.map((item) {
                              return Builder(
                                builder: (BuildContext context) {
                                  return Stack(
                                    children: [
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        decoration: BoxDecoration(
                                          color: Colors.grey,
                                          image: DecorationImage(
                                            image: NetworkImage(
                                              item.backgroundImage,
                                            ),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 10,
                                        bottom: 10,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            AppText.body(
                                              item.title,
                                              color: Colors.black,
                                            ),
                                            const SizedBox(height: 4),
                                            AppText.heading3(
                                              item.description,
                                              color: Colors.black,
                                            ),
                                            if (item.subtitle != null) ...[
                                              const SizedBox(height: 4),
                                              AppText.caption(
                                                item.subtitle!,
                                                color: Colors.black54,
                                              ),
                                            ],
                                            const SizedBox(
                                              height: 5,
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
                                                decoration: const BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(6)),
                                                    color: Colors.black87),
                                                child: AppText.body(
                                                  "Check this Out",
                                                  color: Colors.white,
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  );
                                },
                              );
                            }).toList(),
                            options: CarouselOptions(
                              autoPlay: true,
                              enlargeCenterPage: true,
                              aspectRatio: 2 / 3,
                              autoPlayCurve: Curves.easeIn,
                              enableInfiniteScroll: true,
                              autoPlayAnimationDuration:
                                  const Duration(milliseconds: 300),
                              viewportFraction: 1,
                              onPageChanged: (index, reason) {
                                setState(() {
                                  _currentIndex = index;
                                });
                              },
                            ),
                          ),
                        ),
                        Positioned(
                          height: 60,
                          left: 20,
                          bottom: 25,
                          right: 20,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: const [
                              QuickLinkIcon(
                                  icon: Icons.category, label: "category"),
                              QuickLinkIcon(
                                  icon: Icons.flight, label: "Flight"),
                              QuickLinkIcon(
                                  icon: Icons.blinds_closed, label: "Bill"),
                              QuickLinkIcon(
                                  icon: Icons.wifi, label: "Data Plan"),
                              QuickLinkIcon(
                                  icon: Icons.touch_app, label: "Top up"),
                            ],
                          ),
                        ),
                        Positioned(
                          height: 20,
                          left: 0,
                          right: 0,
                          bottom: 0,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CarouselIndicator(
                                currentIndex: _currentIndex,
                                itemCount: carouselOptions.length,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                : null,
            actions: <Widget>[
              CountIconButton(
                count: "4",
                icon: Icons.card_giftcard,
                onPressed: () {},
              ),
              CountIconButton(
                count: "4+",
                icon: Icons.notifications,
                onPressed: () {},
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: _showFlexibleSpace
                  ? const EdgeInsets.all(10.0)
                  : const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppText.heading3(
                    "Best Sale Product",
                    color: Colors.black87,
                    fontSize: 20,
                  ),
                  AppText.body(
                    "See more",
                    color: AppColors.kGreen,
                    fontSize: 15,
                  ),
                ],
              ),
            ),
            Expanded(
              child: GridViewExample(controller: _scrollController),
            ),
          ],
        ),
      ),
    );
  }
}
