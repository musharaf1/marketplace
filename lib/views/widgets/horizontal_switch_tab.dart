import 'package:flutter/material.dart';
import 'package:translationtestmoniepoint/utils/app_colors.dart';
import 'package:translationtestmoniepoint/views/widgets/app_text.dart';

class HorizontalSwitchTab extends StatefulWidget {
  @override
  _HorizontalSwitchTabState createState() => _HorizontalSwitchTabState();
}

class _HorizontalSwitchTabState extends State<HorizontalSwitchTab> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: const BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Colors.grey,
                width: 1.0,
              ),
            ),
          ),
          child: Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = 0;
                    });
                  },
                  child: Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: selectedIndex == 0
                              ? AppColors.kGreen
                              : Colors.transparent,
                          width: 2.0,
                        ),
                      ),
                    ),
                    child: AppText.heading5(
                      'About Item',
                      fontSize: 16,
                      color:
                          selectedIndex == 0 ? AppColors.kGreen : Colors.grey,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = 1;
                    });
                  },
                  child: Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: selectedIndex == 1
                              ? Colors.green
                              : Colors.transparent,
                          width: 2.0,
                        ),
                      ),
                    ),
                    child: Text(
                      'Reviews',
                      style: TextStyle(
                        color:
                            selectedIndex == 1 ? AppColors.kGreen : Colors.grey,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        selectedIndex == 0
            ? Container(
                width: double.infinity,
                height: 80,
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(
                        text: const TextSpan(children: [
                      TextSpan(
                          text: "Brand:   ",
                          style: TextStyle(color: Colors.black38)),
                      TextSpan(
                          text: "chArmkpr 1",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 16))
                    ])),
                    RichText(
                        text: const TextSpan(children: [
                      TextSpan(
                          text: "Color:   ",
                          style: TextStyle(color: Colors.black38)),
                      TextSpan(
                          text: "Aprikot 1",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 16))
                    ])),
                  ],
                ),
              )
            : Container(),
        selectedIndex == 1
            ? Container(
                width: double.infinity,
                height: 80,
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(
                        text: const TextSpan(children: [
                      TextSpan(
                          text: "Brand:   ",
                          style: TextStyle(color: Colors.black38)),
                      TextSpan(
                          text: "chArmkpr2",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 16))
                    ])),
                    RichText(
                        text: const TextSpan(children: [
                      TextSpan(
                          text: "Color:   ",
                          style: TextStyle(color: Colors.black38)),
                      TextSpan(
                          text: "Aprikot2",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 16))
                    ])),
                  ],
                ),
              )
            : Container(),
      ],
    );
  }
}
