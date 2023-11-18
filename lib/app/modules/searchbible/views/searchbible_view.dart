import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/searchbible_controller.dart';

class SearchbibleView extends GetView<SearchbibleController> {
  const SearchbibleView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SearchbibleView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'SearchbibleView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
