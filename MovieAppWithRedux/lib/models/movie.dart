part of models;

@freezed
class Movie with _$Movie {
  const factory Movie({
    required int id,
    required String title,
    required String imageUrl,
    required double rating,
    String? description,
    List<String>? screenshots,
  }) = Movie$;

  factory Movie.fromJson(Map<dynamic, dynamic> json) => _$MovieFromJson(Map<String, dynamic>.from(json));
}
