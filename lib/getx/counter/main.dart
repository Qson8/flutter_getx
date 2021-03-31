
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'counter_page.dart';

// 只有当你要使用路由管理(Get.to(), Get.back()等)时才需要用GetMaterialApp
// 否则用默认的MaterialApp
void main()=>runApp(GetMaterialApp(home:CounterPage()));