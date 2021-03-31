
import 'package:get/get.dart';


/**
 * 创建你的业务逻辑类，并将所有的变量，方法和控制器放在里面。 
 * 你可以使用一个简单的".obs "使任何变量成为可观察的
 */
class Controller extends GetxController {
  var count = 0.obs;
  increment() => count++;
}
