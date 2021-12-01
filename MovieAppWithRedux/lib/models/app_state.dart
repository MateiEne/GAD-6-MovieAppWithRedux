import 'package:teest_api/models/movie.dart';

class AppState {
  AppState({
    this.movies = const <Movie>[],
    this.isLoading = false,
    this.page = 1,
    this.selectedMovieId,
    this.selectedMovie,
  });

  final List<Movie> movies;

  final bool isLoading;
  final int page;

  final int? selectedMovieId;
  final Movie? selectedMovie;

  AppState copyWith({List<Movie>? movies, bool? isLoading, int? page, int? selectedMovieId, Movie? selectedMovie}) {
    return AppState(
      movies: movies ?? this.movies,
      isLoading: isLoading ?? this.isLoading,
      page: page ?? this.page,
      selectedMovieId: selectedMovieId ?? this.selectedMovieId,
      selectedMovie: selectedMovie ?? this.selectedMovie,
    );
  }
}
