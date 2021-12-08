// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of models;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AppStateTearOff {
  const _$AppStateTearOff();

  AppState$ call(
      {List<Movie> movies = const <Movie>[],
      bool isLoading = false,
      int page = 1,
      int? selectedMovieId = null,
      Movie? selectedMovie = null}) {
    return AppState$(
      movies: movies,
      isLoading: isLoading,
      page: page,
      selectedMovieId: selectedMovieId,
      selectedMovie: selectedMovie,
    );
  }
}

/// @nodoc
const $AppState = _$AppStateTearOff();

/// @nodoc
mixin _$AppState {
  List<Movie> get movies => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  int? get selectedMovieId => throw _privateConstructorUsedError;
  Movie? get selectedMovie => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppStateCopyWith<AppState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res>;
  $Res call(
      {List<Movie> movies,
      bool isLoading,
      int page,
      int? selectedMovieId,
      Movie? selectedMovie});

  $MovieCopyWith<$Res>? get selectedMovie;
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res> implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  final AppState _value;
  // ignore: unused_field
  final $Res Function(AppState) _then;

  @override
  $Res call({
    Object? movies = freezed,
    Object? isLoading = freezed,
    Object? page = freezed,
    Object? selectedMovieId = freezed,
    Object? selectedMovie = freezed,
  }) {
    return _then(_value.copyWith(
      movies: movies == freezed
          ? _value.movies
          : movies // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      selectedMovieId: selectedMovieId == freezed
          ? _value.selectedMovieId
          : selectedMovieId // ignore: cast_nullable_to_non_nullable
              as int?,
      selectedMovie: selectedMovie == freezed
          ? _value.selectedMovie
          : selectedMovie // ignore: cast_nullable_to_non_nullable
              as Movie?,
    ));
  }

  @override
  $MovieCopyWith<$Res>? get selectedMovie {
    if (_value.selectedMovie == null) {
      return null;
    }

    return $MovieCopyWith<$Res>(_value.selectedMovie!, (value) {
      return _then(_value.copyWith(selectedMovie: value));
    });
  }
}

/// @nodoc
abstract class $AppState$CopyWith<$Res> implements $AppStateCopyWith<$Res> {
  factory $AppState$CopyWith(AppState$ value, $Res Function(AppState$) then) =
      _$AppState$CopyWithImpl<$Res>;
  @override
  $Res call(
      {List<Movie> movies,
      bool isLoading,
      int page,
      int? selectedMovieId,
      Movie? selectedMovie});

  @override
  $MovieCopyWith<$Res>? get selectedMovie;
}

/// @nodoc
class _$AppState$CopyWithImpl<$Res> extends _$AppStateCopyWithImpl<$Res>
    implements $AppState$CopyWith<$Res> {
  _$AppState$CopyWithImpl(AppState$ _value, $Res Function(AppState$) _then)
      : super(_value, (v) => _then(v as AppState$));

  @override
  AppState$ get _value => super._value as AppState$;

  @override
  $Res call({
    Object? movies = freezed,
    Object? isLoading = freezed,
    Object? page = freezed,
    Object? selectedMovieId = freezed,
    Object? selectedMovie = freezed,
  }) {
    return _then(AppState$(
      movies: movies == freezed
          ? _value.movies
          : movies // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      selectedMovieId: selectedMovieId == freezed
          ? _value.selectedMovieId
          : selectedMovieId // ignore: cast_nullable_to_non_nullable
              as int?,
      selectedMovie: selectedMovie == freezed
          ? _value.selectedMovie
          : selectedMovie // ignore: cast_nullable_to_non_nullable
              as Movie?,
    ));
  }
}

/// @nodoc

class _$AppState$ implements AppState$ {
  const _$AppState$(
      {this.movies = const <Movie>[],
      this.isLoading = false,
      this.page = 1,
      this.selectedMovieId = null,
      this.selectedMovie = null});

  @JsonKey(defaultValue: const <Movie>[])
  @override
  final List<Movie> movies;
  @JsonKey(defaultValue: false)
  @override
  final bool isLoading;
  @JsonKey(defaultValue: 1)
  @override
  final int page;
  @JsonKey(defaultValue: null)
  @override
  final int? selectedMovieId;
  @JsonKey(defaultValue: null)
  @override
  final Movie? selectedMovie;

  @override
  String toString() {
    return 'AppState(movies: $movies, isLoading: $isLoading, page: $page, selectedMovieId: $selectedMovieId, selectedMovie: $selectedMovie)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AppState$ &&
            const DeepCollectionEquality().equals(other.movies, movies) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.page, page) &&
            const DeepCollectionEquality()
                .equals(other.selectedMovieId, selectedMovieId) &&
            const DeepCollectionEquality()
                .equals(other.selectedMovie, selectedMovie));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(movies),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(page),
      const DeepCollectionEquality().hash(selectedMovieId),
      const DeepCollectionEquality().hash(selectedMovie));

  @JsonKey(ignore: true)
  @override
  $AppState$CopyWith<AppState$> get copyWith =>
      _$AppState$CopyWithImpl<AppState$>(this, _$identity);
}

abstract class AppState$ implements AppState {
  const factory AppState$(
      {List<Movie> movies,
      bool isLoading,
      int page,
      int? selectedMovieId,
      Movie? selectedMovie}) = _$AppState$;

  @override
  List<Movie> get movies;
  @override
  bool get isLoading;
  @override
  int get page;
  @override
  int? get selectedMovieId;
  @override
  Movie? get selectedMovie;
  @override
  @JsonKey(ignore: true)
  $AppState$CopyWith<AppState$> get copyWith =>
      throw _privateConstructorUsedError;
}

Movie _$MovieFromJson(Map<String, dynamic> json) {
  return Movie$.fromJson(json);
}

/// @nodoc
class _$MovieTearOff {
  const _$MovieTearOff();

  Movie$ call(
      {required int id,
      required String title,
      required String imageUrl,
      required double rating,
      String? description,
      List<String>? screenshots}) {
    return Movie$(
      id: id,
      title: title,
      imageUrl: imageUrl,
      rating: rating,
      description: description,
      screenshots: screenshots,
    );
  }

  Movie fromJson(Map<String, Object?> json) {
    return Movie.fromJson(json);
  }
}

/// @nodoc
const $Movie = _$MovieTearOff();

/// @nodoc
mixin _$Movie {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  double get rating => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  List<String>? get screenshots => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieCopyWith<Movie> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieCopyWith<$Res> {
  factory $MovieCopyWith(Movie value, $Res Function(Movie) then) =
      _$MovieCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String title,
      String imageUrl,
      double rating,
      String? description,
      List<String>? screenshots});
}

/// @nodoc
class _$MovieCopyWithImpl<$Res> implements $MovieCopyWith<$Res> {
  _$MovieCopyWithImpl(this._value, this._then);

  final Movie _value;
  // ignore: unused_field
  final $Res Function(Movie) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? imageUrl = freezed,
    Object? rating = freezed,
    Object? description = freezed,
    Object? screenshots = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      screenshots: screenshots == freezed
          ? _value.screenshots
          : screenshots // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
abstract class $Movie$CopyWith<$Res> implements $MovieCopyWith<$Res> {
  factory $Movie$CopyWith(Movie$ value, $Res Function(Movie$) then) =
      _$Movie$CopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String title,
      String imageUrl,
      double rating,
      String? description,
      List<String>? screenshots});
}

/// @nodoc
class _$Movie$CopyWithImpl<$Res> extends _$MovieCopyWithImpl<$Res>
    implements $Movie$CopyWith<$Res> {
  _$Movie$CopyWithImpl(Movie$ _value, $Res Function(Movie$) _then)
      : super(_value, (v) => _then(v as Movie$));

  @override
  Movie$ get _value => super._value as Movie$;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? imageUrl = freezed,
    Object? rating = freezed,
    Object? description = freezed,
    Object? screenshots = freezed,
  }) {
    return _then(Movie$(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      screenshots: screenshots == freezed
          ? _value.screenshots
          : screenshots // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Movie$ implements Movie$ {
  const _$Movie$(
      {required this.id,
      required this.title,
      required this.imageUrl,
      required this.rating,
      this.description,
      this.screenshots});

  factory _$Movie$.fromJson(Map<String, dynamic> json) =>
      _$$Movie$FromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String imageUrl;
  @override
  final double rating;
  @override
  final String? description;
  @override
  final List<String>? screenshots;

  @override
  String toString() {
    return 'Movie(id: $id, title: $title, imageUrl: $imageUrl, rating: $rating, description: $description, screenshots: $screenshots)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Movie$ &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.imageUrl, imageUrl) &&
            const DeepCollectionEquality().equals(other.rating, rating) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality()
                .equals(other.screenshots, screenshots));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(imageUrl),
      const DeepCollectionEquality().hash(rating),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(screenshots));

  @JsonKey(ignore: true)
  @override
  $Movie$CopyWith<Movie$> get copyWith =>
      _$Movie$CopyWithImpl<Movie$>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$Movie$ToJson(this);
  }
}

abstract class Movie$ implements Movie {
  const factory Movie$(
      {required int id,
      required String title,
      required String imageUrl,
      required double rating,
      String? description,
      List<String>? screenshots}) = _$Movie$;

  factory Movie$.fromJson(Map<String, dynamic> json) = _$Movie$.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get imageUrl;
  @override
  double get rating;
  @override
  String? get description;
  @override
  List<String>? get screenshots;
  @override
  @JsonKey(ignore: true)
  $Movie$CopyWith<Movie$> get copyWith => throw _privateConstructorUsedError;
}
