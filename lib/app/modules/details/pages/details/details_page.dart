import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:saborosa_app/app/core/color.dart';
import 'package:saborosa_app/app/core/text_style.dart';
import 'package:saborosa_app/app/modules/details/components/start_rating.dart';
import 'package:saborosa_app/app/modules/details/pages/details/details_store.dart';
import 'package:saborosa_app/app/modules/home/shared/models/items.dart';

class DetailsPage extends StatefulWidget {
  final Cakes cake;

  const DetailsPage({Key? key, required this.cake}) : super(key: key);
  @override
  DetailsPageState createState() => DetailsPageState();
}

class DetailsPageState extends ModularState<DetailsPage, DetailsStore> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Container(
              height: height / 2,
              width: 360,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: const BoxDecoration(
                color: pink02,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                ),
              ),
              child: Image.asset(widget.cake.image),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.cake.name,
                  style: txtHeading.copyWith(color: black, fontSize: 22),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    StartRating(rating: widget.cake.rating)
                  ],
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}
