import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:iptv_player/config/tmdb_config.dart';

class TMDBService {
  static const String _apiKey = TMDBConfig.apiKey;
  static const String _baseUrl = 'https://api.themoviedb.org/3';
  
  static Future<double?> getMovieRating(String title, {int? year}) async {
    try {
      // Search for movie by title
      var searchUrl = '$_baseUrl/search/movie?api_key=$_apiKey&query=${Uri.encodeComponent(title)}';
      if (year != null) {
        searchUrl += '&year=$year';
      }
      
      final response = await http.get(Uri.parse(searchUrl));
      
      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        final results = data['results'] as List;
        
        if (results.isNotEmpty) {
          final movie = results.first;
          final rating = movie['vote_average'] as double?;
          return rating;
        }
      }
    } catch (e) {
      print('TMDB API error: $e');
    }
    
    return null;
  }
  
  static Future<double?> getTVShowRating(String title, {int? year}) async {
    try {
      // Search for TV show by title
      var searchUrl = '$_baseUrl/search/tv?api_key=$_apiKey&query=${Uri.encodeComponent(title)}';
      if (year != null) {
        searchUrl += '&first_air_date_year=$year';
      }
      
      final response = await http.get(Uri.parse(searchUrl));
      
      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        final results = data['results'] as List;
        
        if (results.isNotEmpty) {
          final show = results.first;
          final rating = show['vote_average'] as double?;
          return rating;
        }
      }
    } catch (e) {
      print('TMDB API error: $e');
    }
    
    return null;
  }
  
  static Future<Map<String, dynamic>?> getMovieDetails(String title, {int? year}) async {
    try {
      final searchUrl = '$_baseUrl/search/movie?api_key=$_apiKey&query=${Uri.encodeComponent(title)}';
      
      final response = await http.get(Uri.parse(searchUrl));
      
      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        final results = data['results'] as List;
        
        if (results.isNotEmpty) {
          final movie = results.first;
          return {
            'rating': movie['vote_average'] as double?,
            'poster': movie['poster_path'] != null 
                ? 'https://image.tmdb.org/t/p/w500${movie['poster_path']}'
                : null,
            'backdrop': movie['backdrop_path'] != null
                ? 'https://image.tmdb.org/t/p/w1280${movie['backdrop_path']}'
                : null,
            'overview': movie['overview'] as String?,
            'release_date': movie['release_date'] as String?,
          };
        }
      }
    } catch (e) {
      print('TMDB API error: $e');
    }
    
    return null;
  }

  static Future<Map<String, dynamic>?> getTVDetails(String title, {int? year}) async {
    try {
      var searchUrl = '$_baseUrl/search/tv?api_key=$_apiKey&query=${Uri.encodeComponent(title)}';
      if (year != null) {
        searchUrl += '&first_air_date_year=$year';
      }

      final response = await http.get(Uri.parse(searchUrl));

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        final results = data['results'] as List;

        if (results.isNotEmpty) {
          final show = results.first;
          return {
            'rating': show['vote_average'] as double?,
            'poster': show['poster_path'] != null
                ? 'https://image.tmdb.org/t/p/w500${show['poster_path']}'
                : null,
            'backdrop': show['backdrop_path'] != null
                ? 'https://image.tmdb.org/t/p/w1280${show['backdrop_path']}'
                : null,
            'overview': show['overview'] as String?,
            'first_air_date': show['first_air_date'] as String?,
          };
        }
      }
    } catch (e) {
      print('TMDB API error: $e');
    }

    return null;
  }
}