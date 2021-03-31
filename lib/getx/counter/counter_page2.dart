import 'package:flutter/material.dart';
import 'package:flutter_getx/getx/counter/controller.dart';
import 'package:get/get.dart';

class CounterPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CounterPage2'),
        elevation: 0.0,
      ),
      body: _body(),
    );
  }

  Widget _body() {
    // 可以通过get找到一个正在被其他页面使用的Controler，并将它返回
    final Controller c = Get.find();
    return Center(
      child: Container(
        width: 200,
        height: 200,
        color: Colors.blue,
        child: Align(
            alignment: Alignment.center,
            child: Obx(
              () => Text(
                '${c.count}',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            )),
      ),
    );
  }
}
