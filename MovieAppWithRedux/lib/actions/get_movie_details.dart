import '../models/index.dart';

class GetMovieDetails {
  const GetMovieDetails(this.id, this.onResult);

  final int id;
  final void Function(dynamic action) onResult;
}

class GetMovieDetailsSuccessful {
  const GetMovieDetailsSuccessful(this.movie);

  final Movie movie;
}

class GetMovieDetailsError {
  const GetMovieDetailsError(this.error);

  final Object error;
}
