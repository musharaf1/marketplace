import 'package:flutter/material.dart';

class ServiceOptionBox extends StatelessWidget {
  final String title;
  final IconData icon;
  const ServiceOptionBox({super.key, required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 45,
          width: 45,
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            color: Color(0xffF6F6F6),
            borderRadius: BorderRadius.all(
              Radius.circular(7),
            ),
          ),
          child: Icon(icon),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(title)
      ],
    );
  }
}
