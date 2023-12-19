import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pioubible/app/data/model/bible.dart';
import 'package:pioubible/app/modules/bible/views/detailsversebychapter_view.dart';

class ChapterListPage extends StatelessWidget {
  final List<Bible> testamentList; // Ajoutez la déclaration du paramètre

  const ChapterListPage({Key? key, required this.testamentList})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Liste des Chapitres'),
      ),
      body: ListView.builder(
        itemCount: testamentList.length,
        itemBuilder: (context, index) {
          return InkWell(
              onTap: () {
                Get.to(() => const DetailsversebychapterView());
              },
              child: ListTile(
                title: Text(testamentList[index].text),
              ));
        },
      ),
    );
  }
}
