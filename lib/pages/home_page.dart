import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:flutter_getx/components/article_cell.dart';
import 'package:flutter_getx/components/content_widget.dart';
import 'package:flutter_getx/core/provider/provider.dart';
import 'package:flutter_getx/core/util/ui_util.dart';
import 'package:flutter_getx/models/models.dart';
import 'package:flutter_getx/pages/article_list_viewmodel.dart';
import 'package:flutter_getx/style/style.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Style.bgColor,
      appBar: UIUtil.appBar(context),
      body: ChangeNotifierProvider(
        create: (_) => ArticleListViewModel(),
        builder: (context, child) => Consumer<ArticleListViewModel>(
          builder: (context, model, child) {
            return ContentWidget(
              child: model.viewState == ViewState.busy
                  ? UIUtil.loading()
                  : SmartRefresher(
                      controller: model.refreshController,
                      enablePullDown: true,
                      enablePullUp: true,
                      header: WaterDropHeader(),
                      onRefresh: () => model.refresh(),
                      onLoading: () => model.loadMore(),
                      child: ListView.builder(
                        itemBuilder: (context, index) {
                          Article article = model.list[index];
                          return ArticleCell(article: article);
                        },
                        itemCount: model.list.length,
                      ),
                    ),
              sideChild: model.viewState == ViewState.busy ? Container() : null,
            );
          },
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
