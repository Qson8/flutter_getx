import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'two.page.dart';

class OnePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OnePage'),
        elevation: 0.0,
      ),
      body: Container(
        color: Colors.orange,
      ),
      floatingActionButton: FloatingActionButton(
        child: Text('next'),
        onPressed: () => Get.to(() => TwoPage(),arguments: 'Get is the bet'),
        // onPressed: () => Get.toNamed('/notfound'),
      ),
    );
  }
}
