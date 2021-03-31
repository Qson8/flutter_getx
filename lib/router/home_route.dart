import 'package:router_impl/app_route.dart';
import 'package:flutter_getx/pages/home_page.dart';

class HomeRoute extends AppHomeRoute {
  @override
  get builder => () {
        return HomePage();
      };
}
