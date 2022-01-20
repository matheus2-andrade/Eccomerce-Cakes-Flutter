import 'package:flutter/material.dart';
import 'package:saborosa_app/app/modules/details/components/build_star.dart';

class StartRating extends StatelessWidget {
  final double rating;
  const StartRating({Key? key, required this.rating}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
          5,
          (index) => BuildStar(
                index: index,
                rating: rating,
              )),
    );
  }
}
