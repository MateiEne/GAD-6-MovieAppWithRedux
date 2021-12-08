part of models;

@freezed
class AppState with _$AppState {
  const factory AppState({
    @Default(<Movie>[]) List<Movie> movies,
    @Default(false) bool isLoading,
    @Default(1) int page,
    @Default(null) int? selectedMovieId,
    @Default(null) Movie? selectedMovie,
  }) = AppState$;
}
