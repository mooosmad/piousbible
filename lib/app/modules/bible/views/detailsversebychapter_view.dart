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
        child: Column(
          children: [
            Text(
              'Details du verset is working',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                decoration: TextDecoration.underline,
                decorationThickness: 1.5,
                decorationColor: Colors.white,
              ),
            ),
            SizedBox(height: 50),
            Text('Details du mrde thats working',
                style: TextStyle(
                  fontSize: 20,
                ))
          ],
        ),
      ),
    );
  }
}
