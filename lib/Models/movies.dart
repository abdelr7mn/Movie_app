class Movie {
  String title;
  String backDroppath;
  String originalTitle;
  String overview;
  String posterPath;
  String releaseDate;

  Movie({
    required this.title,
    required this.backDroppath,
    required this.originalTitle,
    required this.overview,
    required this.posterPath,
    required this.releaseDate,
  });

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
      title: json["title"] ?? "",
      backDroppath: json["backDrop_path"] ?? "",
      originalTitle: json["original_title"] ?? "",
      overview: json["overview"] ?? "",
      posterPath: json[" poster_path"] ?? "",
      releaseDate: json["release_date"] ?? "",
    );
  }
}
