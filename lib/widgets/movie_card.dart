import 'package:flutter/material.dart' show BorderRadius, BoxFit, BuildContext, ClipRRect, Colors, Column, Container, CrossAxisAlignment, EdgeInsets, FadeTransition, FontWeight, Hero, Image, InkWell, Navigator, Offset, Padding, PageRouteBuilder, Shadow, Spacer, Stack, StatelessWidget, Text, TextStyle, Widget;
import '../models/movie_model.dart' show Movie;
import '../pages/movie/movie_page.dart' show MoviePage;
import 'app_chip.dart' show AppChip;

class MovieCard extends StatelessWidget {
  const MovieCard({
    super.key,
    required this.movie,
  });

  final Movie movie;

  void goToMoviePage(BuildContext context, Movie movie) {
    Navigator.push(
      context,
      PageRouteBuilder(
        transitionDuration: const Duration(milliseconds: 800),
        reverseTransitionDuration: const Duration(milliseconds: 800),
        pageBuilder: (_, __, ___) => FadeTransition(
          opacity: __,
          child: MoviePage(movie: movie),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => goToMoviePage(context, movie),
      child: Container(
        margin: const EdgeInsets.all(10),
        width: 250,
        height: 430,
        child: Stack(
          children: [
            Hero(
              tag: movie.name,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.network(
                  movie.image,
                  width: 300,
                  height: 533,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppChip(
                    text: 'IMDB 8.1',
                    color: Colors.yellow,
                    textColor: Colors.black,
                  ),
                  const Spacer(),
                  Text(
                    movie.name,
                    style: const TextStyle(
                      shadows: [
                        Shadow(
                          color: Colors.black54,
                          offset: Offset(0, 1),
                          blurRadius: 10,
                        ),
                      ],
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
