import 'package:redux_epics/redux_epics.dart';
import 'package:teest_api/actions/get_movie_details.dart';
import 'package:teest_api/actions/get_movies.dart';
import 'package:teest_api/data/movies_api.dart';
import 'package:teest_api/models/app_state.dart';
import 'package:rxdart/rxdart.dart';
import 'package:teest_api/models/movie.dart';

class AppEpics {
  AppEpics(this._api);

  final MoviesApi _api;

  Epic<AppState> get epics {
    return combineEpics([
      TypedEpic<AppState, GetMovies>(getMovies),
      TypedEpic<AppState, GetMovieDetails>(getMovieDetails),
    ]);
  }

  Stream<dynamic> getMovies(Stream<GetMovies> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap<dynamic>((GetMovies action) => Stream<void>.value(null)
            .asyncMap((_) => _api.getMovies(store.state.page))
            .map<Object>((List<Movie> movies) => GetMoviesSuccessful(movies))
            .onErrorReturnWith((error) => GetMoviesError(error))
            .doOnData(action.onResult));
  }

  Stream getMovieDetails(Stream<GetMovieDetails> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap<dynamic>((GetMovieDetails action) => Stream<void>.value(null)
            .asyncMap((_) => _api.getMovieDetails(action.id))
            .map<Object>((Movie movie) => GetMovieDetailsSuccessful(movie))
            .onErrorReturnWith((error) => GetMovieDetailsError(error))
            .doOnData(action.onResult));
  }
}
