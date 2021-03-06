import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter_getx/components/nav_content.dart';
import 'package:flutter_getx/style/style.dart';

class UIUtil {
  static AppBar appBar(BuildContext context) {
    return AppBar(
      toolbarHeight: getValueForScreenType<double>(
        context: context,
        mobile: 44,
        tablet: 44,
        desktop: 72,
      ),
      automaticallyImplyLeading: false,
      title: NavContent(),
      backgroundColor: Colors.white,
      elevation: 0,
    );
  }

  static Widget loading() {
    return const SpinKitWave(
      color: Style.primaryColor,
      type: SpinKitWaveType.start,
    );
  }
}
