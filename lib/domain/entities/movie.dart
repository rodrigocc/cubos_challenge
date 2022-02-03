class Movie {
  final String title;
  final String originalTitle;
  final String imgUrl;
  final String description;
  final String year;
  final String duration;
  final String avaliation;
  final List<String> genrer;

  final List<String> directors;
  final List<String> cast;
  final List<String> producers;
  final String budget;

  const Movie(
      this.title,
      this.originalTitle,
      this.imgUrl,
      this.description,
      this.year,
      this.duration,
      this.avaliation,
      this.genrer,
      this.directors,
      this.cast,
      this.producers,
      this.budget);
}
