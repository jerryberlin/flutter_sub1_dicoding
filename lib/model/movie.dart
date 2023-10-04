class Movie {
  String name;
  String rating;
  String releaseDate;
  String description;
  String director;
  String writers;
  String image;
 
  Movie({
    required this.name,
    required this.rating,
    required this.releaseDate,
    required this.description,
    required this.director,
    required this.writers,
    required this.image,
  });
}

var moviesList = [
  Movie(
    name: 'Ted Lasso',
    rating: '8.8/10',
    description: 'An American football coach is hired to manage a British soccer team; what he lacks in knowledge, he makes up for in optimism, determination and biscuits.',
    releaseDate: 'August 14, 2020',
    director: 'Bill Lawrence',
    writers: 'Joe Kelly, Jeff Ingold',
    image: 'https://m.media-amazon.com/images/M/MV5BMTdmZjBjZjQtY2JiNS00Y2ZlLTg2NzgtMjUzMGY2OTVmOWJiXkEyXkFqcGdeQXVyMDM2NDM2MQ@@._V1_FMjpg_UX1000_.jpg',
  ),
  Movie(
    name: 'Greyhound',
    rating: '7/10',
    description: 'U.S. Navy Cmdr. Ernest Krause is assigned to lead an Allied convoy across the Atlantic during World War II. His convoy, however, is pursued by German U-boats. Although this is Krauses first wartime mission, he finds himself embroiled in what would come to be known the longest, largest and most complex naval battle in history: The Battle of the Atlantic.',
    releaseDate: 'July 10, 2020',
    director: 'Aaron Schneider',
    writers: 'Lauren Rosenbloom',
    image: 'https://m.media-amazon.com/images/M/MV5BZWQzNjk3MGUtYWE1Yy00NTY1LWJjOTctNTlhMTBjYzRlZDEyXkEyXkFqcGdeQXVyMTA4NjE0NjEy._V1_.jpg',
  ),
  Movie(
    name: 'Blue Beetle',
    rating: '6.2/10',
    description: 'Jaime Reyes suddenly finds himself in possession of an ancient relic of alien biotechnology called the Scarab. When the Scarab chooses Jaime to be its symbiotic host, hes bestowed with an incredible suit of armor thats capable of extraordinary and unpredictable powers, forever changing his destiny as he becomes the superhero Blue Beetle.',
    releaseDate: 'August 16, 2023',
    director: 'Angel Manuel Soto',
    writers: 'Pawel Pogorzelski, Mayes C. Rubeo',
    image: 'https://m.media-amazon.com/images/M/MV5BMmY1ODUzZGItNDllOS00MDBhLTg4NmUtYjU4YjUxMGNlYmMwXkEyXkFqcGdeQXVyODE5NzE3OTE@._V1_.jpg',
  ),
    Movie(
      name: 'The Little Things',
      rating: '6.3/10',
      description: 'Deputy Sheriff Joe "Deke" Deacon joins forces with Sgt. Jim Baxter to search for a serial killer whos terrorizing Los Angeles. As they track the culprit, Baxter is unaware that the investigation is dredging up echoes of Dekes past, uncovering disturbing secrets that could threaten more than his case.',
      releaseDate: 'February 24, 2021',
      director: 'John Lee Hancock',
      writers: 'Sam Avila',
      image: 'https://m.media-amazon.com/images/M/MV5BY2FmOGRhZjgtYTBiMi00ODU2LWEyZjgtNDkzZDc0MzJiMjI1XkEyXkFqcGdeQXVyMTA3MDk2NDg2._V1_.jpg',
  ),
    Movie(
      name: 'Uncharted',
      rating: '6.3/10',
      description: 'Victor Sullivan recruits Nathan Drake to help him find the lost fortune of Ferdinand Magellan. However, they face competition from Santiago Moncada, who believes that the treasure belongs to him.',
      releaseDate: 'February 16, 2022',
      director: 'Ruben Fleischer',
      writers: 'Cornelia Ott, Stephan Speth',
      image: 'https://m.media-amazon.com/images/M/MV5BMWEwNjhkYzYtNjgzYy00YTY2LThjYWYtYzViMGJkZTI4Y2MyXkEyXkFqcGdeQXVyNTM0OTY1OQ@@._V1_FMjpg_UX1000_.jpg',
  ),
];