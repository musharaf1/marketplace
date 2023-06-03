import 'package:flutter/material.dart';
import 'package:translationtestmoniepoint/utils/utils.dart';
import 'package:translationtestmoniepoint/views/displaydetails/details.dart';
import 'package:translationtestmoniepoint/views/widgets/app_text.dart';

class GridViewExample extends StatefulWidget {
  final List<Map<String?, dynamic>> items = [
    {
      'image': 'assets/images/shirt.png',
      'title': 'Shirt',
      'description': "Essentials Men's Short- \nsleeve Crewkneck T-shirt",
      'isFavorite': false,
      "price": "\$12"
    },
    {
      'image': 'assets/images/shirt.png',
      'title': 'Shirt',
      'description': "Essentials Men's Short- \nsleeve Crewkneck T-shirt",
      'isFavorite': false,
      "price": "\$18"
    },
    {
      'image': 'assets/images/shirt.png',
      'title': 'Shirt',
      'description': "Essentials Men's Short- \nsleeve Crewkneck T-shirt",
      'isFavorite': false,
      "price": "\$32"
    },
    {
      'image': 'assets/images/shirt.png',
      'title': 'Shirt',
      'description': "Essentials Men's Short- \nsleeve Crewkneck T-shirt",
      'isFavorite': false,
      "price": "\$22"
    },
    {
      'image': 'assets/images/shirt.png',
      'title': 'Shirt',
      'description': "Essentials Men's Short- \nsleeve Crewkneck T-shirt",
      'isFavorite': false,
      "price": "\$12"
    },
    {
      'image': 'assets/images/shirt.png',
      'title': 'Shirt',
      'description': "Essentials Men's Short- \nsleeve Crewkneck T-shirt",
      'isFavorite': false,
      "price": "\$18"
    },
    {
      'image': 'assets/images/shirt.png',
      'title': 'Shirt',
      'description': "Essentials Men's Short- \nsleeve Crewkneck T-shirt",
      'isFavorite': false,
      "price": "\$32"
    },
    {
      'image': 'assets/images/shirt.png',
      'title': 'Shirt',
      'description': "Essentials Men's Short- \nsleeve Crewkneck T-shirt",
      'isFavorite': false,
      "price": "\$22"
    },
    {
      'image': 'assets/images/shirt.png',
      'title': 'Shirt',
      'description': "Essentials Men's Short- \nsleeve Crewkneck T-shirt",
      'isFavorite': false,
      "price": "\$12"
    },
    {
      'image': 'assets/images/shirt.png',
      'title': 'Shirt',
      'description': "Essentials Men's Short- \nsleeve Crewkneck T-shirt",
      'isFavorite': false,
      "price": "\$18"
    },
    {
      'image': 'assets/images/shirt.png',
      'title': 'Shirt',
      'description': "Essentials Men's Short- \nsleeve Crewkneck T-shirt",
      'isFavorite': false,
      "price": "\$32"
    },
    {
      'image': 'assets/images/shirt.png',
      'title': 'Shirt',
      'description': "Essentials Men's Short- \nsleeve Crewkneck T-shirt",
      'isFavorite': false,
      "price": "\$22"
    },
    // Add more items as needed
  ];

  final ScrollController controller;

  GridViewExample({Key? key, required this.controller}) : super(key: key);

  @override
  _GridViewExampleState createState() => _GridViewExampleState();
}

class _GridViewExampleState extends State<GridViewExample> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      controller: widget.controller,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 2 / 3,
      ),
      itemCount: widget.items.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              PageRouteBuilder(
                transitionDuration: const Duration(milliseconds: 500),
                pageBuilder: (context, animation, secondaryAnimation) =>
                    FadeTransition(
                  opacity: animation,
                  child: DisplayDetails(
                      selectedImage: widget.items[index]['image'] ?? ''),
                ),
              ),
            );
          },
          child: Container(
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(5.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    SizedBox(
                      height: 120,
                      width: double.infinity,
                      child: Image.asset(
                        widget.items[index]['image'] ?? '',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      // top: 5,
                      right: 0,
                      child: GestureDetector(
                        child: Icon(
                          widget.items[index]['isFavorite'] == true
                              ? Icons.favorite
                              : Icons.favorite_border,
                          color: widget.items[index]['isFavorite'] == true
                              ? Colors.red
                              : Colors.black54,
                          size: 24,
                        ),
                        onTap: () {
                          setState(() {
                            widget.items[index]['isFavorite'] =
                                !widget.items[index]['isFavorite'];
                          });
                        },
                      ),
                    ),
                  ],
                ),
                AppText.body(
                  widget.items[index]['title'] ?? "",
                  color: Colors.black38,
                ),
                const SizedBox(height: 4.0),
                AppText.body(
                  widget.items[index]['description'] ?? "",
                  fontWeight: FontWeight.bold,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.amber[700],
                            size: 15,
                          ),
                          AppText.body(" 4.9 | 2356")
                        ],
                      ),
                      AppText.body(
                        widget.items[index]['price'] ?? "",
                        color: AppColors.kGreen,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
