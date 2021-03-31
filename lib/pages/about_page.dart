import 'package:flutter/material.dart';
import 'package:markdown_widget/markdown_widget.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_getx/components/content_widget.dart';
import 'package:flutter_getx/core/util/ui_util.dart';
import 'package:flutter_getx/style/style.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Style.bgColor,
      appBar: UIUtil.appBar(context),
      body: ContentWidget(
        child: Container(
          color: Colors.white,
          child: MarkdownWidget(
            data: _aboutme,
            padding: EdgeInsets.only(bottom: 50, left: 16, right: 16, top: 16),
            styleConfig: StyleConfig(
              pConfig: PConfig(
                onLinkTap: (url) {
                  launch(url);
                },
              ),
            ),
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

const _aboutme = '';
