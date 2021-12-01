import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:teest_api/models/movie.dart';

class MoviesApi {
  Future<List<Movie>> getMovies(int page) async {
    final Uri uri = Uri(
      scheme: 'https',
      host: 'yts.mx',
      pathSegments: <String>[
        'api',
        'v2',
        'list_movies.json',
      ],
      queryParameters: <String, String>{
        'page': '$page',
      },
    );

    final Response response = await get(uri);

    if (response.statusCode != 200) {
      throw StateError('Error fetching the movies');
    }

    final Map<String, dynamic> body = jsonDecode(response.body);
    final Map<String, dynamic> data = body['data'] as Map<String, dynamic>;
    final List<dynamic> movies = data['movies'] as List<dynamic>;

    return movies //
        .map(
          (dynamic item) =>
          Movie(
            id: item['id'] as int,
            title: item['title'] as String,
            imageUrl: item['large_cover_image'] as String,
            rating: (item['rating'] as num).toDouble(),
          ),
    )
        .toList();
  }

  Future<Movie> getMovieDetails(int id) async {
    final Uri uri = Uri(
      scheme: 'https',
      host: 'yts.mx',
      pathSegments: <String>[
        'api',
        'v2',
        'movie_details.json',
      ],
      queryParameters: <String, String>{
        'movie_id': '$id',
        'with_images': 'true',
      },
    );

    final Response response = await get(uri);

    if (response.statusCode != 200) {
      throw StateError('Error fetching the movie details');
    }

    final Map<String, dynamic> body = jsonDecode(response.body);
    final Map<String, dynamic> data = body['data'] as Map<String, dynamic>;
    final Map<String, dynamic> movie = data['movie'] as Map<String, dynamic>;

    return Movie(
        id: movie['id'] as int,
        title: movie['title'] as String,
        rating: (movie['rating'] as num).toDouble(),
        imageUrl: movie['large_cover_image'] as String,
        description: movie['description_full'] as String,
        screenshots: <String>[
          movie['large_screenshot_image1'] as String,
          movie['large_screenshot_image2'] as String,
          movie['large_screenshot_image3'] as String,
        ],
    );
  }
}