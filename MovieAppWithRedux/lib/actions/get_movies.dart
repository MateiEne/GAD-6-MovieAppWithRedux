import 'package:teest_api/models/movie.dart';

class GetMovies {
  const GetMovies(this.onResult);

  final void Function(dynamic action) onResult;
}

class GetMoviesSuccessful {
  const GetMoviesSuccessful(this.movies);

  final List<Movie> movies;
}

class GetMoviesError {
  const GetMoviesError(this.error);

  final Object error;
}
