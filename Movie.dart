main() {
  Movie m1 = Movie("Casino Royale", "Eon Productions", "PG13");
  Movie m2 = Movie("Toy Story", "Pixar");
  Movie m3 = Movie("Joker", "Warner Bros", "R");
  Movie m4 = Movie("Shrek", "DreamWorks", "PG");
  print(m2.rating);
  List<Movie> all = [m1, m2, m3, m4];
  List<Movie> pgMovies = Movie.getPG(all);

  for (Movie m in pgMovies) {
    print("${m.title} - ${m.rating}");
  }
}
class Movie {
  String title;
  String studio;
  String rating;
  Movie(this.title, this.studio, [this.rating = "PG"]);
  static List<Movie> getPG(List<Movie> movies) {
    List<Movie> result = [];
    for (Movie m in movies) {
      if (m.rating.contains("PG")) {
        result.add(m);
      }
    }
    return result;
  }
}

