import 'package:flutter/material.dart';
import 'package:flutter_getx/getx/counter/controller.dart';
import 'package:flutter_getx/getx/counter/counter_page2.dart';
import 'package:get/get.dart';


class CounterPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // 使用Get.put()实例化你的类，使其对当下的所有子路由可用。
    final Controller c = Get.put(Controller());
    return Scaffold(
      appBar: AppBar(
        // 使用Obx(()=>每当改变计数时，就更新Text()。
        title: Obx(() =>Text('Click:${c.count}')),
        elevation: 0.0,
      ),
      body: _body(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: c.increment,
      ),
    );
  }

  Widget _body() {
    final Controller c = Get.find();
    return Center(
      child: Column(
        children: [
          Container(
            width: 200,
            height: 200,
            color: Colors.red,
            child: Align(
              alignment: Alignment.center,
              child: Obx(() =>Text(
                '${c.count}',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),)
            ),
          ),
          SizedBox(width: 20),
          Container(
            child: ElevatedButton(
              child: Text('go to two page'),

              // 用一个简单的Get.to()即可代替Navigator.push那8行，无需上下文！
              // onPressed: () => Get.to(CounterPage2()), // 会报警告
              onPressed: () => Get.to(() => CounterPage2()),
            ),
          ),
        ],
      ),
    );
  }
}
