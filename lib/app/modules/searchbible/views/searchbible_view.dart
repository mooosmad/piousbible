import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/searchbible_controller.dart';

class SearchbibleView extends GetView<SearchbibleController> {
  const SearchbibleView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recherche biblique'),
        centerTitle: true,
      ),
      body: const Center(
        child: Column(
          children: [
            Text(
              'Aucune recherche n\'est en cours',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 50),
            Text(
              'Aucune recherche n\'est en cours',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
