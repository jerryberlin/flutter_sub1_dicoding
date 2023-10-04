import 'package:flutter/material.dart';
import 'package:sub1_flutter/detail_screen.dart';
import 'package:sub1_flutter/model/movie.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const TopApp();
  }
}

class TopApp extends StatefulWidget {
  const TopApp({super.key});

  @override
  State<TopApp> createState() => _TopAppState();
}

class _TopAppState extends State<TopApp> {

  List<Movie> filteredMovies = List.from(moviesList);

  void updateList(String value){
    setState(() {
      filteredMovies = moviesList.where((movie) => movie.name.toLowerCase().contains(value.toLowerCase())).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 43, 41, 49),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 30.0,
            ),
            const Text(
              "Movies",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            TextField(
              onChanged: (value) => updateList(value),
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                filled: true,
                fillColor: const Color.fromARGB(255, 82, 76, 98),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16.0),
                    borderSide: BorderSide.none),
                hintText: "ex. Ted Lasso",
                hintStyle: const TextStyle(color: Colors.grey),
                prefixIcon: const Icon(Icons.search),
                prefixIconColor: Colors.grey,
              ),
            ),
            MovieList(filteredMovies: filteredMovies)
          ],
        ),
      ),
    );
  }
}

class MovieList extends StatelessWidget {
  final List<Movie> filteredMovies;
  const MovieList({Key? key, required this.filteredMovies}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: filteredMovies.isEmpty
          ? const Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.close,
                    size: 48.0,
                    color: Colors.white
                  ),
                  Text('No Movie', style: TextStyle(fontSize: 16.0, color: Colors.white),)
                ],
              ),
            )
          : ListView.builder(
              itemBuilder: (context, index) {
                final Movie movie = filteredMovies[index];
                return InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return DetailScreen(movie: movie);
                    }));
                  },
                  child: Card(
                    color: const Color.fromARGB(255, 153, 141, 189),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Image.network(movie.image),
                        ),
                        Expanded(
                          flex: 2,
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  movie.name,
                                  style: const TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  movie.description,
                                  maxLines: 6,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
              itemCount: filteredMovies.length,
            ),
    );
  }
}
