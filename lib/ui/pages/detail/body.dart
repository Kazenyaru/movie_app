import 'package:flutter/material.dart';
import 'package:movie_app/data/model/movie_model.dart';
import 'package:movie_app/ui/pages/detail/backdrop_rating.dart';
import 'package:movie_app/ui/pages/detail/cast_and_crew.dart';
import 'package:movie_app/ui/pages/detail/genres.dart';
import 'package:movie_app/ui/pages/detail/title_duration_and_fav_btn.dart';
import 'package:movie_app/util/constants.dart';

class Body extends StatelessWidget {
  final MovieModel movie;

  const Body({Key key, this.movie}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // it will provide us total height and width
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          BackdropAndRating(size: size, movie: movie),
          SizedBox(height: Constants.defaultPadding / 2),
          TitleDurationAndFabBtn(movie: movie),
          Genres(movie: movie),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: Constants.defaultPadding / 2,
              horizontal: Constants.defaultPadding,
            ),
            child: Text(
              "Plot Summary",
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: Constants.defaultPadding),
            child: Text(
              movie.plot,
              style: TextStyle(
                color: Color(0xFF737599),
              ),
            ),
          ),
          CastAndCrew(casts: movie.cast),
        ],
      ),
    );
  }
}
