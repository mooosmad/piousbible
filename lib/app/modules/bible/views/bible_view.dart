import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pioubible/app/data/model/bible.dart';
import 'package:pioubible/app/utils/constant/constant_colors.dart';

import '../controllers/bible_controller.dart';

class BibleView extends GetView<BibleController> {
  const BibleView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: ConstantColors.lightColor,
        height: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset("assets/logo_red.png"),
                  CircleAvatar(radius: 25, child: Container()),
                ],
              ),
              const SizedBox(height: 10),
              _buildVersetDuJour(),
              SizedBox(
                height: Get.height * 0.5,
                child: ListView(
                  children: [
                    _buildAncienTestament(),
                    const SizedBox(height: 20),
                    _buildNouveauTestament(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildVersetDuJour() {
    return Container(
      padding: const EdgeInsets.all(12),
      width: Get.width * 1.5,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.center,
          colors: [
            ConstantColors.redColor.withOpacity(0.75),
            ConstantColors.redColor,
          ],
        ),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("verset du jour",
              style: TextStyle(color: Colors.white, fontSize: 13)),
          SizedBox(height: 10),
          Text("1 Corinthiens 2:9 LSG",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
          SizedBox(height: 15),
          Text(
            "Mais, comme il est écrit, ce sont des choses que l'œil n'a point vues, que l'oreille n'a point entendues, et qui ne sont point montées au cœur de l'homme, des",
            style: TextStyle(color: Colors.white, fontSize: 15),
            maxLines: 4,
          ),
        ],
      ),
    );
  }

  Widget _buildAncienTestament() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 10),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Ancien Testament",
                style: TextStyle(fontWeight: FontWeight.bold)),
            Text("voir tout >"),
          ],
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: Get.height * 0.25,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 2,
            itemBuilder: (context, index) {
              final bibleAncien = bibleList
                  .where((bible) => bible.testament == "Ancien")
                  .toList()[index];
              print(bibleAncien);
              return Stack(
                children: [
                  Container(
                    height: Get.height * 0.20,
                    width: Get.width * 0.44,
                    margin: const EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                      color: ConstantColors.redColor,
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage(bibleimageancien[index]),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 50,
                    left: 10,
                    child: Container(
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: ConstantColors.redColor.withOpacity(0.4),
                      ),
                      child: Text(
                        bibleAncien.book,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _buildNouveauTestament() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 10),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Nouveau Testament",
                style: TextStyle(fontWeight: FontWeight.bold)),
            Text("voir tout >"),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            _buildTestamentContainer(),
            const SizedBox(width: 10),
            _buildTestamentContainer(),
          ],
        ),
      ],
    );
  }

  Widget _buildTestamentContainer() {
    return Container(
      height: Get.height * 0.20,
      width: Get.width * 0.44,
      decoration: BoxDecoration(
        color: ConstantColors.redColor,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}

List<String> bibleimageancien = [
  "assets/ancien2.png",
  "assets/ancien1.png",
];
