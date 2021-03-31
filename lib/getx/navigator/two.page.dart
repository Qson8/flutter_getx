import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'three_page.dart';

class TwoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TwoPage'),
        elevation: 0.0,
      ),
      body: Container(
        color: Colors.yellow,
        child: Container(child: Text('${Get.arguments}'),),
      ),
      floatingActionButton: FloatingActionButton(
        child: Text('next'),
        // onPressed: () => Get.to(() => ThreePage()),
         // 带参
            onPressed: ()=> Get.toNamed('/three/15454545'),
      ),
    );
  }
}
