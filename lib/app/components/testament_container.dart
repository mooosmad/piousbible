import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pioubible/app/utils/constant/constant_colors.dart';

class TestamentContainer extends StatelessWidget {
  final String imageUrl;
  final String text;

  const TestamentContainer({
    super.key,
    required this.imageUrl,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    final screenHeight = Get.height;

    return Stack(
      children: [
        Container(
          height: screenHeight * 0.20,
          width: Get.width * 0.44,
          margin: const EdgeInsets.only(right: 10, left: 10),
          decoration: BoxDecoration(
            color: ConstantColors.redColor,
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: AssetImage(imageUrl),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          bottom: screenHeight *
              0.055, // Ajustez cette valeur pour régler la position verticale
          left: 20, // Ajustez cette valeur pour régler la position horizontale
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: ConstantColors.redColor.withOpacity(0.4),
            ),
            child: Text(
              text,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
