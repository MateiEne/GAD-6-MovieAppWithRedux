import 'package:redux/redux.dart';
import '../actions/get_movie_details.dart';
import '../actions/get_movies.dart';
import '../actions/select_movie.dart';
import '../models/index.dart';

Reducer<AppState> reducer = combineReducers<AppState>(<Reducer<AppState>>[
  TypedReducer<AppState, GetMovies>(_getMovies),
  TypedReducer<AppState, GetMoviesSuccessful>(_getMoviesSuccessful),
  TypedReducer<AppState, GetMoviesError>(_getMoviesError),
  TypedReducer<AppState, GetMovieDetails>(_getMovieDetails),
  TypedReducer<AppState, GetMovieDetailsSuccessful>(_getMovieDetailsSuccessful),
  TypedReducer<AppState, GetMovieDetailsError>(_getMovieDetailsError),
  TypedReducer<AppState, SelectMovie>(_selectMovie),
]);

AppState _getMovies(AppState state, GetMovies action) {
  return state.copyWith(
    isLoading: true,
  );
}

AppState _getMoviesSuccessful(AppState state, GetMoviesSuccessful action) {
  final List<Movie> movies = <Movie>[];

  movies.addAll(state.movies);
  movies.addAll(action.movies);

  return state.copyWith(
    movies: movies,
    page: state.page + 1,
    isLoading: false,
  );
}

AppState _getMoviesError(AppState state, GetMoviesError action) {
  return state.copyWith(
    isLoading: false,
  );
}

AppState _getMovieDetails(AppState state, GetMovieDetails action) {
  return state.copyWith(
    isLoading: true,
  );
}

AppState _getMovieDetailsSuccessful(AppState state, GetMovieDetailsSuccessful action) {
  final int index = state.movies.indexWhere((Movie element) => element.id == action.movie.id);
  state.movies[index] = action.movie;
  return state.copyWith(
    isLoading: false,
    selectedMovie: action.movie,
  );
}

AppState _getMovieDetailsError(AppState state, GetMovieDetailsError action) {
  return state.copyWith(
    isLoading: false,
  );
}

AppState _selectMovie(AppState state, SelectMovie action) {
  return state.copyWith(
    selectedMovieId: action.movieId,
  );
}
