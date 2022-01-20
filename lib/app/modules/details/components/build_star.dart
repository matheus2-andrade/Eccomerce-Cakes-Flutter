import 'package:flutter/material.dart';
import 'package:saborosa_app/app/core/color.dart';

class BuildStar extends StatelessWidget {
  final int index;
  final double rating;
  const BuildStar({
    Key? key,
    required this.index,
    required this.rating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Icon icon;

    if (index >= rating) {
      icon = const Icon(
        Icons.star,
        color: gray02,
      );
    }
    else if (index > rating - 1 && index < rating) {
      icon = const Icon(
        Icons.star_half,
        color: ratingC,
      );
    }
    else {
      icon = const Icon(
        Icons.star,
        color: ratingC,
      );
    }

    return icon;
  }
}
