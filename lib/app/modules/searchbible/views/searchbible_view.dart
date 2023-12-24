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
        child: Text(
          'Center is working here',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
