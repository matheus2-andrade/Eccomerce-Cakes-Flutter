import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:saborosa_app/app/core/color.dart';
import 'package:saborosa_app/app/modules/details/pages/details/details_store.dart';
import 'package:saborosa_app/app/modules/home/components/circle_button.dart';

class CustomAppBar extends StatefulWidget {
  final DetailsStore controller;
  const CustomAppBar({Key? key, required this.controller}) : super(key: key);

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Observer(builder: (_) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {
                Modular.to.pop();
              },
              icon: const Icon(Icons.arrow_back),
            ),
            Observer(builder: (_) {
              return CircleButton(
                image: widget.controller.isFav ? 'heart_full.svg' : 'heart.svg',
                bgColor: pink02,
                iconColor: mainColor,
                size: 35,
                onTap: () {
                  setState(() {
                    widget.controller.setFav();
                  });
                },
              );
            })
          ],
        );
      }),
    );
  }
}
