import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'UnknownRoutePage.dart';
import 'four_page.dart';
import 'one_page.dart';
import 'three_page.dart';
import 'two.page.dart';

void main() {
  // runApp(GetMaterialApp(home:OnePage()));

  // 别名路由配置
  runApp(
    GetMaterialApp(
      unknownRoute: GetPage(name: '/notfound', page: () => UnknownRoutePage()),
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => OnePage()),
        GetPage(
            name: '/two', page: () => TwoPage(), transition: Transition.zoom),
        GetPage(name: '/three/', page: () => ThreePage()),
        GetPage(name: '/three/:user', page: () => ThreePage()),
        GetPage(
            name: '/four', page: () => FourPage(), transition: Transition.zoom),
      ],
    ),
  );
}
