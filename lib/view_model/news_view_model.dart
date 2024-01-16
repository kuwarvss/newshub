
import 'package:newshub/models/categories_news_model.dart';
import 'package:newshub/models/news_channel_headlines_model.dart';
import 'package:newshub/repository/news_repository.dart';

class NewsViewModel {
  final _rep = NewsRepository();


  Future<NewsChannelsHeadlinesModel> fetchNewsChannelHeadlinesApi(String channelName) async{
    final response = await _rep.fetchNewsChannelHeadlinesApi(channelName);
    return response;

  }

  Future<CategoriesNewsModel> fetchCategoriesNewsApi(String category) async{
    final response = await _rep.fetchCategoriesNewsApi(category);
    return response;

  }

}