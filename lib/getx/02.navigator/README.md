#### 路由管理

如果你想免上下文（context）使用路由/snackbars/dialogs/bottomsheets，GetX对你来说也是极好的，来吧展示：

在你的MaterialApp前加上 "Get"，把它变成GetMaterialApp。

```dart
GetMaterialApp( // Before: MaterialApp(
  home: MyHome(),
)
```

导航到新页面
```dart
Get.to(NextScreen());
```
也可以用别名导航到新页面,查看更多关于命名路由的详细信息[这里](https://github.com/jonataslaw/getx/blob/master/documentation/zh_CN/route_management.md#navigation-with-named-routes)
```dart
Get.toNamed('/details');
```
要关闭snackbars, dialogs, bottomsheets或任何你通常会用Navigator.pop(context)关闭的东西。
```dart
Get.back();
```

进入下一个页面，但没有返回上一个页面的选项（用于闪屏页，登录页面等）。
```dart
Get.off(NextScreen());
```

进入下一个页面并取消之前的所有路由（在购物车、投票和测试中很有用）。
```dart
Get.offAll(NextScreen());
```

注意到你不需要使用context来做这些事情吗？这就是使用Get路由管理的最大优势之一。有了它，你可以在你的控制器类中执行所有这些方法，而不用担心context在哪里。

关于别名路由，和对路由的低级控制，请看[这里](https://github.com/jonataslaw/getx/blob/master/documentation/zh_CN/route_management.md)。