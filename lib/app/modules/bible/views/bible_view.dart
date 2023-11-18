import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/bible_controller.dart';

class BibleView extends GetView<BibleController> {
  const BibleView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BibleView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'BibleView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
