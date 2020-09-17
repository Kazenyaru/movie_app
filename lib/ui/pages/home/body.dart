import 'package:flutter/material.dart';

import 'package:movie_app/util/constants.dart';

import 'package:movie_app/ui/pages/home/categories.dart';
import 'package:movie_app/ui/pages/home/genres.dart';
import 'package:movie_app/ui/pages/home/movie_carousel.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Categories(),
          Genres(),
          SizedBox(
            height: Constants.defaultPadding,
          ),
          MovieCarousel(),
        ],
      ),
    );
  }
}
