import 'package:flutter_getx/core/provider/provider.dart';
import 'package:flutter_getx/core/util/value_util.dart';
import 'package:flutter_getx/locator.dart';
import 'package:flutter_getx/models/models.dart';
import 'package:flutter_getx/services/api/api.dart';

class ArticleListViewModel extends ViewStateRefreshListModel {
  final Api api = locator<Api>();

  final String categoryId;

  ArticleListViewModel({this.categoryId}) {
    initData();
  }

  @override
  Future<List<Article>> loadData({int pageNum}) async {
    Map res = await api.fetchArticleList(
        pageNo: pageNum, pageSize: pageSize, categoryId: categoryId);
    return ValueUtil.toList(res['data'])
        .map((e) => Article.fromMap(e))
        .toList();
  }
}
