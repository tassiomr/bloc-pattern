import 'dart:async';
import 'movie_api_provider.dart';
import '../models/item_models.dart';

class Repository {
  final moviesApiProvider = MovieApiProvider();

  Future<ItemModel> fectchAllMovies() => moviesApiProvider.fetchMoveiList();
}