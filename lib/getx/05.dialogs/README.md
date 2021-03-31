#### Dialogs

打开Dialogs：
```dart
Get.dialog(YourDialogWidget());
```
打开默认Dialogs：
```dart
Get.defaultDialog(
  onConfirm: () => print("Ok"),
  middleText: "Dialog made in 3 lines of code"
);
```

你也可以用Get.generalDialog代替showGeneralDialog。

对于所有其他的FlutterDialogs小部件，包括cupertinos，你可以使用Get.overlayContext来代替context，并在你的代码中任何地方打开它。 对于不使用Overlay的小组件，你可以使用Get.context。 这两个context在99%的情况下都可以代替你的UIcontext，除了在没有导航context的情况下使用 inheritedWidget的情况。

