import 'package:flutter/material.dart';

import 'package:get/get.dart';

class DetailsversebychapterView extends GetView {
  const DetailsversebychapterView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Verset du chapitre'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'DetailsversebychapterView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
