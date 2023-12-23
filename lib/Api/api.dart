import 'dart:convert';
import 'package:flutflix/constants.dart';
import 'package:flutflix/Models/movies.dart';
import 'package:http/http.dart' as http;

class Api {
  static const _trendingUrl =
      'https://api.themoviedb.org/3/trending/all/day?api_key=${Constants.apiKey}';
  static const _topratedUrl =
      'https://api.themoviedb.org/3/movie/top_rated?api_key=${Constants.apiKey}';
  static const _upcomingUrl =
      'https://api.themoviedb.org/3/movie/upcoming?api_key=${Constants.apiKey}';

  Future<List> getTrendingMovies() async {
    final response = await http.get(Uri.parse(_trendingUrl));
    if (response.statusCode == 200) {
      final decodedData = json.decode(response.body)['results'] as List;
      return decodedData.map((movie) => Movie.fromJson(movie)).toList();
    } else {
      throw Exception('Something happened');
    }
  }

  Future<List> getTopRatedMovies() async {
    final response = await http.get(Uri.parse(_topratedUrl));
    if (response.statusCode == 200) {
      final decodedData = json.decode(response.body)['results'] as List;
      return decodedData.map((movie) => Movie.fromJson(movie)).toList();
    } else {
      throw Exception('Something happened');
    }
  }

  Future<List> getUpcomingMovies() async {
    final response = await http.get(Uri.parse(_upcomingUrl));
    if (response.statusCode == 200) {
      final decodedData = json.decode(response.body)['results'] as List;
      return decodedData.map((movie) => Movie.fromJson(movie)).toList();
    } else {
      throw Exception('Something happened');
    }
  }
}
