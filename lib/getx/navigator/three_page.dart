import 'package:flutter/material.dart';
import 'package:flutter_getx/getx/navigator/four_page.dart';
import 'package:get/get.dart';

class ThreePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ThreePage'),
        elevation: 0.0,
      ),
      body: Container(
        color: Colors.blue,
        child: Center(
          child: FlatButton(
            child: Text('点我 ${Get.parameters['user']}'),

            // onPressed: () => Get.off(() => FourPage()),
            // onPressed: () => Get.offAll(() => FourPage()),
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
