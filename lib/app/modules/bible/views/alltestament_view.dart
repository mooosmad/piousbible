import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pioubible/app/components/testament_container.dart';
import 'package:pioubible/app/data/model/bible.dart';
import 'package:pioubible/app/modules/bible/views/detailschapter_view.dart';

class AlltestamentView extends StatelessWidget {
  final String testamentType;
  final List<Bible> testamentList;
  final List<String> imageList;

  const AlltestamentView({
    Key? key,
    required this.testamentType,
    required this.testamentList,
    required this.imageList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("$testamentType Testament"), // Utilisez le titre dynamique
        centerTitle: true,
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: testamentList.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Get.to(
                () => ChapterListPage(testamentList: testamentList),
              );
            },
            child: TestamentContainer(
                imageUrl: 'assets/ancien1.png',
                text: testamentList[index].book),
          );
        },
      ),
    );
  }
}
