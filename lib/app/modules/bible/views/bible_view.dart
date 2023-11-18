import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:pioubible/app/utils/constant/constant_colors.dart';

import '../controllers/bible_controller.dart';

class BibleView extends GetView<BibleController> {
  const BibleView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset("assets/logo_red.png"),
                CircleAvatar(
                  radius: 25,
                  child: Container(),
                )
              ],
            ),
            const SizedBox(height: 15),
            Container(
              padding: const EdgeInsets.all(12),
              height: 160,
              width: Get.width * 1.5,
              decoration: BoxDecoration(
                // color: ConstantColors.redColor,
                borderRadius: BorderRadius.circular(10),
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.center,
                  colors: [
                    ConstantColors.redColor.withOpacity(0.8),
                    ConstantColors.redColor
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
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold)),
                  SizedBox(height: 15),
                  Text(
                      "Mais, comme il est écrit, ce sont des choses que l'oeil n'a point vues, que l'oreille n'a point entendues, et qui ne sont point montées au coeur de l'homme, des",
                      style: TextStyle(color: Colors.white, fontSize: 15)),
                ],
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: Get.height * 0.5125,
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        const SizedBox(height: 10),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Anciens Testament",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text("voir tout >"),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            Container(
                              height: Get.height * 0.20,
                              width: Get.width * 0.44,
                              decoration: BoxDecoration(
                                color: ConstantColors.redColor,
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            const SizedBox(width: 10),
                            Container(
                              height: Get.height * 0.20,
                              width: Get.width * 0.44,
                              decoration: BoxDecoration(
                                color: ConstantColors.redColor,
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ],
                        )
                      ],
                    );
                  }),
            )
          ],
        ),
      ),
    ));
  }
}
