import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FourPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FourPage'),
        elevation: 0.0,
      ),
      body: Container(
        color: Colors.blue,
        child: Center(
          child: FlatButton(
            child: Text('点我'),
            onPressed: () => Get.back(),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Text('back'),
        onPressed: () => Get.back(),
      ),
    );
  }
}
