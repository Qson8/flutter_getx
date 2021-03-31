import 'package:flutter_getx/core/provider/provider.dart';
import 'package:flutter_getx/config/locator.dart';
import 'package:flutter_getx/models/models.dart';
import 'package:flutter_getx/services/api/api.dart';

class ArticleDetailViewModel extends ViewStateModel {
  Article _article;
  Article get article => _article;

  final Api api = locator<Api>();

  ArticleDetailViewModel({String articleId}) {
    fetchDetail(articleId);
  }

  fetchDetail(String articleId) async {
    setBusy();
    Map res = await api.fetchArticleDetail(articleId: articleId);
    _article = Article.fromMap(res);
    setIdle();
  }
}
