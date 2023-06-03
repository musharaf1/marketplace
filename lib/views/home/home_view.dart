import 'dart:async';

import 'package:flutter/material.dart';
import 'package:translationtestmoniepoint/utils/app_colors.dart';
import 'package:translationtestmoniepoint/views/home/components/home_carousel.dart';
import 'package:translationtestmoniepoint/views/home/components/search_section.dart';
import 'package:translationtestmoniepoint/views/widgets/image_carousel.dart';

import '../../constants/home_carousel_constants.dart';
import 'components/build_carousel_indicator.dart';
import 'components/service_option_box.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  bool displayOnlySearchBar = false;

  ScrollController? _scrollController;
  // PageController? _pageController;
  // int _currentpage = 0;

  @override
  void initState() {
    _scrollController = ScrollController();
    // _pageController = PageController(initialPage: 0);

    _scrollController?.addListener(() {
      if (_scrollController!.offset > 150) {
        setState(() {
          displayOnlySearchBar = true;
        });
      } else {
        setState(() {
          displayOnlySearchBar = false;
        });
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kBackroundGrey,
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          SliverAppBar(
            backgroundColor: displayOnlySearchBar ? Colors.white : Colors.blue,
            elevation: 0.0,
            pinned: true,
            expandedHeight: 280,
            flexibleSpace: Stack(
              children: [
                const ImageCarousel(), // Custom widget for image carousel
                Positioned.fill(
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors
                              .transparent, // Add your desired gradient colors here
                          Colors.black.withOpacity(0.5),
                        ],
                      ),
                    ),
                  ),
                ),
                Column(
                  children: const [
                    Expanded(child: SearchSection()),
                    // SizedBox(
                    //   height: 50,
                    // ),
                  ],
                ),
              ],
            ),
          ),

          // SliverAppBar(
          //   backgroundColor: displayOnlySearchBar ? Colors.white : Colors.blue,
          //   elevation: 0.0,
          //   pinned: true,
          //   title: Padding(
          //     padding: const EdgeInsets.only(top: 70, bottom: 30),
          //     child: Column(
          //       children: const [
          //         SearchSection(),
          //         SizedBox(
          //           height: 50,
          //         )
          //       ],
          //     ),
          //   ),
          //   expandedHeight: 280,
          //   flexibleSpace: FlexibleSpaceBar(
          //     background: Padding(
          //       padding: const EdgeInsets.only(top: 150, left: 22),
          //       child: PageView.builder(
          //         controller: _pageController,
          //         onPageChanged: (int val) {
          //           setState(() {
          //             _currentpage = val;
          //           });
          //           _pageController?.animateToPage(_currentpage++,
          //               duration: const Duration(milliseconds: 500),
          //               curve: Curves.easeIn);
          //         },
          //         itemCount: carouselOptions.length,
          //         itemBuilder: (context, index) => HomeCarousel(
          //           index: index,
          //           currentIndex: _currentpage,
          //         ),
          //       ),
          //     ),
          //   ),
          // ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ...List.generate(
                    5,
                    (index) => const ServiceOptionBox(
                      title: "Category",
                      icon: Icons.category,
                    ),
                  )
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Center(
                child: Row(children: [
                  ...List.generate(1,
                      (index) => const BuildCarouselIndicator(isActive: false))
                ]),
              ),
            ),
          ),
          SliverGrid(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              childAspectRatio: 2 / 3,
            ),
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      displayOnlySearchBar = !displayOnlySearchBar;
                    });
                  },
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    color: Colors.green,
                    child: const Center(
                      child: Text(
                        "name[index]",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                );
              },
              childCount: 30,
            ),
          )
        ],
      ),
    );
  }
}



/* 
   SliverToBoxAdapter(
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 500),
              height: displayOnlySearchBar ? 140 : 300,
              padding: const EdgeInsets.only(left: 21, right: 21),
              color:
                  displayOnlySearchBar ? Colors.white : AppColors.kCarouselGrey,
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // * Search bar and icons
                  Padding(
                    padding: const EdgeInsets.only(top: 50, bottom: 30),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.only(
                              right: 10,
                            ),
                            height: 55,
                            color: Colors.blue,
                          ),
                        ),
                        const Icon(Icons.shopping_bag_outlined),
                        const SizedBox(
                          width: 10,
                        ),
                        const Icon(Icons.mail_outline),
                        const SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                  ),
                  displayOnlySearchBar
                      ? const SizedBox.shrink()
                      : Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text("#Fashion "),
                                Text("- - -")
                              ],
                            ),
                            Text("80% OFF "),
                            Text("Discount .... "),
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
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(6)),
                                  color: Colors.black.withOpacity(.5),
                                ),
                                child: const Text("Check this Out"),
                              ),
                            )
                          ],
                        )
                ],
              ),
            ),
          ),
*/