#### 嵌套导航

Get让Flutter的嵌套导航更加简单。 你不需要context，而是通过Id找到你的导航栈。

    注意：创建平行导航堆栈可能是危险的。理想的情况是不要使用NestedNavigators，或者尽量少用。如果你的项目需要它，请继续，但请记住，在内存中保持多个导航堆栈可能不是一个好主意(消耗RAM)。

看看它有多简单:

```dart
Navigator(
  key: Get.nestedKey(1), // create a key by index
  initialRoute: '/',
  onGenerateRoute: (settings) {
    if (settings.name == '/') {
      return GetPageRoute(
        page: () => Scaffold(
          appBar: AppBar(
            title: Text("Main"),
          ),
          body: Center(
            child: TextButton(
              color: Colors.blue,
              onPressed: () {
                Get.toNamed('/second', id:1); // navigate by your nested route by index
              },
              child: Text("Go to second"),
            ),
          ),
        ),
      );
    } else if (settings.name == '/second') {
      return GetPageRoute(
        page: () => Center(
          child: Scaffold(
            appBar: AppBar(
              title: Text("Main"),
            ),
            body: Center(
              child:  Text("second")
            ),
          ),
        ),
      );
    }
  }
),
```