import 'dart:async';
import 'package:http/http.dart' show Client;
import 'dart:convert';
import '../models/item_models.dart';


class MovieApiProvider {
  Client client = Client();
  final _apiKey = '53312c5af553e6206f705572bd518711';

  Future<ItemModel> fetchMoveiList() async {
    print("entered");
    final response = await client.get("http://api.themoviedb.org/3/movie/popular?api_key=$_apiKey");
    print(response.body.toString());
    if(response.statusCode == 200) {
      return ItemModel.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load post');
    }
  }
}