// ignore_for_file: must_be_immutable

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pioubible/app/components/testament_container.dart';
import 'package:pioubible/app/data/model/bible.dart';
import 'package:pioubible/app/modules/bible/views/alltestament_view.dart';
import 'package:pioubible/app/utils/constant/constant_colors.dart';

import '../controllers/bible_controller.dart';

class BibleView extends GetView<BibleController> {
  BibleView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(8),
        height: double.infinity,
        child: ListView(
          shrinkWrap: true,
          children: [
            const SizedBox(height: 10),
            _buildHeader(),
            const SizedBox(height: 10),
            _buildVersetDuJour(),
            Column(
              children: [
                _buildTestament("Ancien", bibleimageancien),
                _buildTestament("Nouveau", bibleimagenouveau),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset("assets/logo_red.png"),
        CircleAvatar(radius: 25, child: Container()),
      ],
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

  Widget _buildTestament(String testamentType, List<String> imageList) {
    final testamentList =
        bibleList.where((bible) => bible.testament == testamentType).toList();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("$testamentType Testament",
                style: const TextStyle(fontWeight: FontWeight.bold)),
            InkWell(
                child: const Text("voir tout >"),
                onTap: () {
                  Get.to(() => AlltestamentView(
                        testamentType: testamentType,
                        imageList: imageList,
                        testamentList: testamentList,
                      ));
                }),
          ],
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: Get.height * 0.25,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 2,
            itemBuilder: (context, index) {
              final bibleItem = testamentList[index];
              if (kDebugMode) {
                print(bibleItem);
              }
              return TestamentContainer(
                  imageUrl: "assets/ancien1.png", text: bibleItem.book);
            },
          ),
        ),
      ],
    );
  }

  List<String> bibleimageancien = [
    "assets/ancien2.png",
    "assets/ancien1.png",
  ];

  List<String> bibleimagenouveau = [
    "assets/nouveau1.png",
    "assets/nouveau2.png",
  ];
}
