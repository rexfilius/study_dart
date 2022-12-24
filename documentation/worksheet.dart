void main() {
  MovieGenre movieGenre = MovieGenre.fromJson(jsonTest);
  //print(movieGenre);

  Genre genre = movieGenre.genres.singleWhere(
    (element) => element.id == 80,
    orElse: () => Genre(id: 0, name: ''),
  );
  print("$genre and ${genre.name}");

  //print(genreList.singleWhere((element) => element).);
}

Map<String, dynamic> jsonTest = {
  "genres": [
    {"id": 28, "name": "Action"},
    {"id": 12, "name": "Adventure"},
    {"id": 16, "name": "Animation"},
    {"id": 35, "name": "Comedy"},
    {"id": 80, "name": "Crime"},
    {"id": 99, "name": "Documentary"},
    {"id": 18, "name": "Drama"},
    {"id": 10751, "name": "Family"},
    {"id": 14, "name": "Fantasy"},
    {"id": 36, "name": "History"},
    {"id": 27, "name": "Horror"},
    {"id": 10402, "name": "Music"},
    {"id": 9648, "name": "Mystery"},
    {"id": 10749, "name": "Romance"},
    {"id": 878, "name": "Science Fiction"},
    {"id": 10770, "name": "TV Movie"},
    {"id": 53, "name": "Thriller"},
    {"id": 10752, "name": "War"},
    {"id": 37, "name": "Western"}
  ]
};

class MovieGenre {
  List<Genre> genres;

  MovieGenre({
    required this.genres,
  });

  factory MovieGenre.fromJson(Map<String, dynamic> json) {
    return MovieGenre(
        genres: List<Genre>.from(
      json['genres'].map((e) => Genre.fromJson(e)),
    ));
  }

  @override
  String toString() {
    return {
      "CLASS": "MovieGenre",
      "genres": genres,
    }.toString();
  }
}

class Genre {
  int id;
  String name;

  Genre({
    required this.id,
    required this.name,
  });

  factory Genre.fromJson(Map<String, dynamic> json) {
    return Genre(
      id: json['id'],
      name: json['name'],
    );
  }

  @override
  String toString() {
    return {
      "CLASS": "Genre",
      "id": id,
      "name": name,
    }.toString();
  }
}
