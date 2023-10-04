import 'package:flutter/material.dart';
import 'package:sub1_flutter/model/movie.dart';

class DetailScreen extends StatelessWidget {
  final Movie movie;

  const DetailScreen({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double imageHeight = MediaQuery.of(context).size.height/1.5;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 43, 41, 49),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  width: screenWidth,
                  height: imageHeight,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(movie.image),
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.7),
                        BlendMode.darken
                      )
                    )
                  ),
                ),
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        IconButton(
                          icon: const Icon(
                            Icons.arrow_back_ios_new,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ],
                    ),
                  )
                ),
                Positioned(
                  top: imageHeight-120,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: 45,
                          height: 45,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle, 
                            border: Border.all(
                              color: Colors.amberAccent, 
                              width: 2.0, 
                            ),
                          ),
                          child: const IconButton(
                            icon: Icon(
                              Icons.star,
                              color: Colors.amberAccent,
                              size: 25,
                            ),
                            onPressed: null,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 12.0),
                          child: Text(
                            movie.rating,
                            style: const TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.amberAccent,
                              fontSize: 20.0,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: imageHeight-80,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      movie.name.toUpperCase(),
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 32.0,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 3.0,
                      ),
                    ),
                  )
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left:16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    movie.releaseDate,
                    style: const TextStyle(
                      color: Colors.lightBlueAccent
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(
                      movie.description,
                      style: const TextStyle(
                        color: Colors.white
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Row(
                      children: <Widget>[
                        const Text(
                          'Director: ',
                          style: TextStyle(
                            color: Color.fromARGB(255, 67, 230, 148),
                          ),
                        ),
                        Text(
                          movie.director,
                          style: const TextStyle(
                            color: Colors.white
                          ),
                        )
                      ],
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      const Text(
                        'Writers:  ',
                        style: TextStyle(
                          color: Color.fromARGB(255, 67, 230, 148)
                        ),
                        ),
                      Text(
                        movie.writers,
                        style: const TextStyle(
                          color: Colors.white
                        ),
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}