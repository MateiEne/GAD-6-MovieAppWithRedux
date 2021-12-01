import 'package:teest_api/models/movie.dart';

class AppState {
  AppState({
    this.movies = const <Movie>[],
    this.isLoading = false,
    this.page = 1,
  });

  final List<Movie> movies;

  final bool isLoading;
  final int page;

  AppState copyWith({
    List<Movie>? movies,
    bool? isLoading,
    int? page,
  }) {
    return AppState(
      movies: movies ?? this.movies,
      isLoading: isLoading ?? this.isLoading,
      page: page ?? this.page,
    );
  }
}
