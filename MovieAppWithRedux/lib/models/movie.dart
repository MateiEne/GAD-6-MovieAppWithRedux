class Movie {
  Movie({
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.rating,
    this.description = '',
    this.screenshots = const <String>[],
  });

  final int id;
  final String title;
  final String imageUrl;
  final String description;
  final double rating;
  final List<String> screenshots;

  @override
  String toString() {
    return '[id: $id, title: $title, imageUrl: $imageUrl, rating: $rating, description: $description, screenshots: $screenshots]';
  }
}
