class MovieInfoModel {
  final bool adult;
  final String backdropPath;
  final String? title;
  final String? originalTitle;
  final String overview;
  final String? posterPath;
  final String? releaseDate;

//api response will be in json format all the data is stored into a map

  MovieInfoModel.fromJson(Map data)
      : adult = data['adult'] ?? false,
        backdropPath = data['backdrop_path'] ?? "",
        title = data['title'],
        originalTitle = data['original_title'],
        overview = data['overview'],
        posterPath = data['poster_path'],
        releaseDate = data['release_date'];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['adult'] = adult;
    data['backdrop_path'] = backdropPath;
    data['title'] = title;
    data['original_title'] = originalTitle;
    data['overview'] = overview;
    data['poster_path'] = posterPath;
    data['release_date'] = releaseDate;
    data['vote_count'];

    return data;
  }
}
