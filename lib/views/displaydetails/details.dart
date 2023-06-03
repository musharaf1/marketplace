// import 'package:flutter/material.dart';
// import 'package:translationtestmoniepoint/utils/utils.dart';
// import 'package:translationtestmoniepoint/views/widgets/custom_grid_view.dart';
// import 'package:translationtestmoniepoint/views/widgets/custom_icon.dart';
// import 'package:translationtestmoniepoint/views/widgets/horizontal_switch_tab.dart';

// import 'package:translationtestmoniepoint/views/widgets/widgets.dart';

// class DisplayDetails extends StatelessWidget {
//   final String selectedImage;

//   const DisplayDetails({Key? key, required this.selectedImage})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: AppColors.kBackroundGrey,
//       appBar: AppBar(
//         backgroundColor: AppColors.kBackroundGrey,
//         elevation: 0,
//         leading: IconButton(
//           color: Colors.black,
//           icon: const Icon(Icons.arrow_back_ios),
//           onPressed: () {
//             Navigator.pop(context);
//           },
//         ),
//         actions: <Widget>[
//           const Padding(
//             padding: EdgeInsets.all(8.0),
//             child: Icon(
//               Icons.favorite,
//               color: Colors.red,
//             ),
//           ),
//           const Icon(
//             Icons.share,
//             color: Colors.black,
//           ),
//           CountIconButton(
//             count: "4+",
//             icon: Icons.notifications,
//             onPressed: () {},
//           ),
//         ],
//       ),
//       body: ListView(
//         children: [
//           Container(
//             height: 300,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(5),
//               color: AppColors.kBackroundGrey,
//             ),
//             margin: const EdgeInsets.all(16),
//             padding: const EdgeInsets.all(5),
//             width: double.infinity,
//             child: Image.asset(
//               selectedImage,
//               fit: BoxFit.cover,
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 5),
//             child: Row(
//               children: [
//                 const Icon(Icons.calendar_today_rounded, color: Colors.black12),
//                 const SizedBox(
//                   width: 10,
//                 ),
//                 AppText.body("tokobaju.id")
//               ],
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 5),
//             child: Row(
//               children: [
//                 AppText.heading5(
//                   "Essentials Men's Short-Sleeve\nCrewneck T-Shirt",
//                   color: Colors.black,
//                 )
//               ],
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 5),
//             child: Row(
//               children: [
//                 const Icon(Icons.star, color: Colors.orange, size: 20),
//                 const SizedBox(width: 10),
//                 AppText.body("4.9 Ratings"),
//                 const SizedBox(width: 10),
//                 Container(
//                   width: 5,
//                   height: 5,
//                   decoration: const BoxDecoration(
//                     shape: BoxShape.circle,
//                     color: Colors.black45,
//                   ),
//                 ),
//                 const SizedBox(width: 10),
//                 AppText.body(" 2.3k+ Reviews"),
//                 Container(
//                   width: 5,
//                   height: 5,
//                   decoration: const BoxDecoration(
//                     shape: BoxShape.circle,
//                     color: Colors.black45,
//                   ),
//                 ),
//                 const SizedBox(width: 10),
//                 Container(
//                   width: 5,
//                   height: 5,
//                   decoration: const BoxDecoration(
//                     shape: BoxShape.circle,
//                     color: Colors.black45,
//                   ),
//                 ),
//                 AppText.body(" 2.9k+ Sold"),
//               ],
//             ),
//           ),
//           const SizedBox(
//             height: 20,
//           ),
//           HorizontalSwitchTab(),
//           Card(
//             elevation: 2,
//             child: Container(
//               padding: const EdgeInsets.all(16),
//               height: 130,
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Column(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     children: [
//                       AppText.body(
//                         "Total Price",
//                         fontSize: 12,
//                         color: Colors.black38,
//                       ),
//                       const SizedBox(
//                         height: 5,
//                       ),
//                       AppText.caption(
//                         "\$18.00",
//                         color: AppColors.kGreen,
//                         fontWeight: FontWeight.bold,
//                         fontSize: 25,
//                       ),
//                     ],
//                   ),
//                   SizedBox(
//                     height: 150,
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Container(
//                           height: 50,
//                           width: 70,
//                           padding: const EdgeInsets.symmetric(horizontal: 15),
//                           decoration: BoxDecoration(
//                             color: AppColors.kGreen,
//                             borderRadius: const BorderRadius.only(
//                               topLeft: Radius.circular(5),
//                               bottomLeft: Radius.circular(5),
//                             ),
//                           ),
//                           child: Row(children: [
//                             const Icon(
//                               Icons.shopify,
//                               color: Colors.white,
//                             ),
//                             const SizedBox(
//                               width: 5,
//                             ),
//                             AppText.body(
//                               '1',
//                               color: Colors.white,
//                             )
//                           ]),
//                         ),
//                         Container(
//                           height: 50,
//                           width: 120,
//                           decoration: const BoxDecoration(
//                             color: Colors.black87,
//                             borderRadius: BorderRadius.only(
//                               topRight: Radius.circular(5),
//                               bottomRight: Radius.circular(5),
//                             ),
//                           ),
//                           child: Center(
//                               child: AppText.body(
//                             "Buy",
//                             centered: true,
//                             color: Colors.white,
//                           )),
//                         ),
//                       ],
//                     ),
//                   )
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:translationtestmoniepoint/utils/utils.dart';
import 'package:translationtestmoniepoint/views/widgets/custom_grid_view.dart';
import 'package:translationtestmoniepoint/views/widgets/custom_icon.dart';
import 'package:translationtestmoniepoint/views/widgets/horizontal_switch_tab.dart';

import 'package:translationtestmoniepoint/views/widgets/widgets.dart';

class DisplayDetails extends StatelessWidget {
  final String selectedImage;

  const DisplayDetails({Key? key, required this.selectedImage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kBackroundGrey,
      appBar: AppBar(
        backgroundColor: AppColors.kBackroundGrey,
        elevation: 0,
        leading: IconButton(
          color: Colors.black,
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: <Widget>[
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.favorite,
              color: Colors.red,
            ),
          ),
          const Icon(
            Icons.share,
            color: Colors.black,
          ),
          CountIconButton(
            count: "4+",
            icon: Icons.notifications,
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: [
          Container(
            height: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: AppColors.kBackroundGrey,
            ),
            margin: const EdgeInsets.all(16),
            padding: const EdgeInsets.all(5),
            width: double.infinity,
            child: Image.asset(
              selectedImage,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 5),
            child: Row(
              children: [
                const Icon(Icons.calendar_today_rounded, color: Colors.black12),
                const SizedBox(
                  width: 10,
                ),
                AppText.body("tokobaju.id")
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 5),
            child: Row(
              children: [
                AppText.heading5(
                  "Essentials Men's Short-Sleeve\nCrewneck T-Shirt",
                  color: Colors.black,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 5),
            child: Row(
              children: [
                const Icon(Icons.star, color: Colors.orange, size: 20),
                const SizedBox(width: 10),
                AppText.body("4.9 Ratings"),
                const SizedBox(width: 10),
                Container(
                  width: 5,
                  height: 5,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.black45,
                  ),
                ),
                const SizedBox(width: 10),
                AppText.body(" 2.3k+ Reviews"),
                Container(
                  width: 5,
                  height: 5,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.black45,
                  ),
                ),
                const SizedBox(width: 10),
                Container(
                  width: 5,
                  height: 5,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.black45,
                  ),
                ),
                AppText.body(" 2.9k+ Sold"),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          HorizontalSwitchTab(),
          Card(
            elevation: 2,
            child: Container(
              padding: const EdgeInsets.all(16),
              height: 130,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      AppText.body(
                        "Total Price",
                        fontSize: 12,
                        color: Colors.black38,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      AppText.caption(
                        "\$18.00",
                        color: AppColors.kGreen,
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 150,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 50,
                          width: 70,
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          decoration: BoxDecoration(
                            color: AppColors.kGreen,
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(5),
                              bottomLeft: Radius.circular(5),
                            ),
                          ),
                          child: Row(children: [
                            const Icon(
                              Icons.shopify,
                              color: Colors.white,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            AppText.body(
                              '1',
                              color: Colors.white,
                            )
                          ]),
                        ),
                        Container(
                          height: 50,
                          width: 120,
                          decoration: const BoxDecoration(
                            color: Colors.black87,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(5),
                              bottomRight: Radius.circular(5),
                            ),
                          ),
                          child: Center(
                              child: AppText.body(
                            "Buy",
                            centered: true,
                            color: Colors.white,
                          )),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          StarRatings(),
          const SizedBox(
            height: 20,
          ),
          const CustomGridView(columns: 2, length: 10),
        ],
      ),
    );
  }
}

class StarRatings extends StatelessWidget {
  const StarRatings({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 5),
      child: Row(
        children: [
          const Icon(Icons.star, color: Colors.orange, size: 20),
          const Icon(Icons.star, color: Colors.orange, size: 20),
          const Icon(Icons.star, color: Colors.orange, size: 20),
          const SizedBox(width: 10),
          AppText.body("4.9 Ratings"),
        ],
      ),
    );
  }
}

class CustomGridView extends StatelessWidget {
  final int columns;
  final int length;

  const CustomGridView({
    required this.columns,
    required this.length,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: columns,
      children: List.generate(length, (index) {
        return Container(
          margin: const EdgeInsets.all(8),
          color: Colors.grey,
          height: 100,
          width: 100,
          child: Center(
            child: Text(
              'Item $index',
              style: TextStyle(color: Colors.white),
            ),
          ),
        );
      }),
    );
  }
}
